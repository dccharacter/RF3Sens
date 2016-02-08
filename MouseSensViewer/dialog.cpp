#include "dialog.h"

#include <QLabel>
#include <QLineEdit>
#include <QComboBox>
#include <QSpinBox>
#include <QPushButton>
#include <QGridLayout>
#include <QSettings>
#include <QApplication>

#include <QtSerialPort/QSerialPortInfo>

QT_USE_NAMESPACE

/*
#define	ConstBaudRate	115200	//230400 для arduino nano, 115200 для Digispark

#define TypeSensor 1	// 1 = ADNS_2610, MCS-12085
						// 2 = ADNS_5020
*/

/*
//ARRAY_WIDTH, ARRAY_HEIGHT: definitions of pixel array
//MCS-12085, ADNS-2610 = 18*18, ADNS5020 15*15
//MaskBitData: колич. бит в потоке данных (нужен для создания корректной палитры)
//MCS-12085, ADNS-2610 = 6bit = 64, ADNS5020 = 7bit = 128
#if TypeSensor == 1
	#define ARRAY_WIDTH		18
	#define ARRAY_HEIGHT	18
	#define MaskBitData		64
#elif TypeSensor == 2
	#define ARRAY_WIDTH		15
	#define ARRAY_HEIGHT	15
	#define MaskBitData		128
#else
	#error
#endif
*/

int RegArrayWidth =1;
int RegArrayHeight =1;

QImage image(5, 5, QImage::Format_Indexed8);

Dialog::Dialog(QWidget *parent)
	: QDialog(parent)
	, responseSize(0)
	, serialPortLabel(new QLabel(tr("Serial port:")))
	, serialPortComboBox(new QComboBox())
	, BaudRateComboBox(new QComboBox())
	, waitResponseLabel(new QLabel(tr("Wait, msec:")))
	, waitResponseSpinBox(new QSpinBox())
	, trafficLabel(new QLabel(tr("No traffic.")))
	, statusLabel(new QLabel(tr("Status: Not running.")))
	, runButton(new QPushButton(tr("Start")))
{
	foreach (const QSerialPortInfo &info, QSerialPortInfo::availablePorts())
        serialPortComboBox->addItem(info.portName());

	BaudRateComboBox->addItem("230400");
	BaudRateComboBox->addItem("115200");

    m_sSettingsFile = QApplication::applicationDirPath() + "/settings.ini";

	waitResponseSpinBox->setRange(0, 10000);
	waitResponseSpinBox->setValue(20);

	QGridLayout *mainLayout = new QGridLayout;
	mainLayout->addWidget(serialPortLabel, 0, 0);
	mainLayout->addWidget(serialPortComboBox, 0, 1);
	mainLayout->addWidget(BaudRateComboBox, 0, 2);
	mainLayout->addWidget(runButton, 0, 3);
	mainLayout->addWidget(waitResponseLabel, 1, 0);
	mainLayout->addWidget(waitResponseSpinBox, 1, 1);
	mainLayout->addWidget(trafficLabel, 2, 0, 1, 4);
	mainLayout->addWidget(statusLabel, 3, 0, 1, 5);
	setLayout(mainLayout);

	setWindowTitle(tr("Mouse Sensor"));

    loadSettings();

	serialPortComboBox->setFocus();

	timer.setSingleShot(true);

	connect(runButton, SIGNAL(clicked()),
			this, SLOT(sendRequest()));
	connect(&serial, SIGNAL(readyRead()),
			this, SLOT(readResponse()));
	connect(&timer, SIGNAL(timeout()),
			this, SLOT(processTimeout()));
    connect(serialPortComboBox, SIGNAL(currentIndexChanged(int)),
            this, SLOT(saveSettings()));
    connect(BaudRateComboBox, SIGNAL(currentTextChanged(QString)),
            this, SLOT(saveSettings()));

}

void Dialog::sendRequest()
{
	serial.close();
    saveSettings();
	serial.setPortName(serialPortComboBox->currentText());
	serial.setBaudRate(BaudRateComboBox->currentText().toInt());
	serial.setDataBits( QSerialPort::Data8 );
	serial.setParity( QSerialPort::NoParity );
	serial.setStopBits( QSerialPort::OneStop );
	serial.setFlowControl( QSerialPort::NoFlowControl );

	if (!serial.open(QIODevice::ReadWrite))
	{
		processError(tr("Can't open %1, error code %2")
					 .arg(serial.portName()).arg(serial.error()));
		return;
	}

	setControlsEnabled(false);
	statusLabel->setText(tr("Status: Running, connected to port %1.")
						 .arg(serialPortComboBox->currentText()));
	timer.start(waitResponseSpinBox->value());
}

void Dialog::readResponse()
{

//	response.append(serial.readBufferSize());

	if (!timer.isActive())
		timer.start(waitResponseSpinBox->value());
	response.append(serial.readAll());

}

void Dialog::processTimeout()
{
	int IndexData;
	setControlsEnabled(true);

	if(response.size() != responseSize || responseSize ==0)
	{
		if(response.size() ==(15*15 +7))
		{
			resizeImage(&image,15,15,128);
		}
		else if(response.size() ==(18*18 +7))
		{
			resizeImage(&image,18,18,64);
		}
		else
		{
			trafficLabel->setText(tr("response size:%1")
							.arg(response.size()));
		}
							
	}
	else
	{
		IndexData = RegArrayWidth * RegArrayHeight;
		trafficLabel->setText(tr("Max: %1, Min: %2, Ave: %3, Shut: %4, Squal: %5, LaserPower: %6")
							.arg((int)*(response.data()+IndexData+1)) //MAX_PIXEL
							.arg((unsigned char)*(response.data()+IndexData+2)) //MIN_PIXEL
							.arg((unsigned char)*(response.data()+IndexData+3)) //AVE
							.arg((unsigned int)(((unsigned char)*(response.data()+IndexData+4)*256)+((unsigned char)*(response.data()+IndexData+5))))
							.arg((int)*(response.data()+IndexData)) //SQUAL
              .arg((unsigned char)*(response.data()+IndexData+6))); //LASER_POWER


		for (int y = 0; y < image.height(); y++)
		{
			//memcpy(rawData + y*RegArrayWidth, response.data() + y*RegArrayWidth, image.bytesPerLine());
			memcpy(image.scanLine(y), response.data() + y*RegArrayWidth, image.bytesPerLine());
		}
		statusLabel->setPixmap(QPixmap::fromImage(image.scaled(180*2, 180*2))); // Show result on a form

/*
		unsigned char rawData[ARRAY_WIDTH*ARRAY_HEIGHT];
		trafficLabel->setText("\n\r");
		int nIndex = 0;
		for (int y = 0; y < RegArrayHeight; ++y)
		{
			// dump one row
			for (int x = 0; x < RegArrayWidth; ++x)
			{
				// format nicely
				if (rawData[nIndex] < 10)
				{
					trafficLabel->setText(trafficLabel->text() + tr("0%1 ").arg(rawData[nIndex++]));
				}
				else
				{
					trafficLabel->setText(trafficLabel->text() + tr("%1 ").arg(rawData[nIndex++]));
				}
			}
			// next row
			trafficLabel->setText(trafficLabel->text() + "\n\r");
		}
*/
	}
	response.clear();
}

void Dialog::processError(const QString &error)
{
	setControlsEnabled(true);
	statusLabel->setText(tr("Status: Not running, %1.").arg(error));
	trafficLabel->setText(tr("No traffic."));
}

void Dialog::setControlsEnabled(bool enable)
{
	runButton->setEnabled(enable);
	serialPortComboBox->setEnabled(enable);
	waitResponseSpinBox->setEnabled(enable);
}

void Dialog::resizeImage(QImage *image, int ArrayWidth, int ArrayHeight, int Mask)
{
	RegArrayWidth = ArrayWidth; RegArrayHeight = ArrayHeight;
	responseSize = response.size();
	//масштабировать палитру и размер для image
	QVector<QRgb> palette;	//палитра
	for(int i = 0; i < Mask; ++i)	palette.append(qRgb(i*(256/Mask),i*(256/Mask),i*(256/Mask)));

	QImage newImage(RegArrayWidth, RegArrayHeight, QImage::Format_Indexed8);
	//newImage.fill(qRgb(255, 255, 255));
	newImage.setColorTable(palette);
	*image = newImage;
}

void Dialog::loadSettings()
{
    QSettings settings(m_sSettingsFile, QSettings::IniFormat);
    QString sPortName = settings.value("portName", "").toString();
    QString sBaudRate = settings.value("portBaudRate", "").toString();
    qint8 idx = serialPortComboBox->findText(sPortName);
    if (idx) {
        serialPortComboBox->setCurrentIndex(idx);
    }
    BaudRateComboBox->setCurrentText(sBaudRate);
}

void Dialog::saveSettings()
{
    QSettings settings(m_sSettingsFile, QSettings::IniFormat);
    QString sPortName = serialPortComboBox->currentText();
    settings.setValue("portName", sPortName);
    QString sBaudRate = BaudRateComboBox->currentText();
    settings.setValue("portBaudRate", sBaudRate);
}
