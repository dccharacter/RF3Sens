#ifndef DIALOG_H
#define DIALOG_H

#include <QDialog>
#include <QTimer>
#include <QCheckBox>

#include <QtSerialPort/QSerialPort>

QT_USE_NAMESPACE

QT_BEGIN_NAMESPACE

class QLabel;
class QLineEdit;
class QSpinBox;
class QPushButton;
class QComboBox;

QT_END_NAMESPACE

class Dialog : public QDialog
{
	Q_OBJECT

public:
	Dialog(QWidget *parent = 0);

private slots:
	void sendRequest();
	void readResponse();
	void processTimeout();
    void loadSettings();
    void saveSettings();
    void pauseOutput();

private:
	void setControlsEnabled(bool enable);
	void processError(const QString &error);
	void resizeImage(QImage *image, int ArrayWidth, int ArrayHeight, int Mask);


private:
	int responseSize;
	QLabel *serialPortLabel;
	QComboBox *serialPortComboBox;
	QComboBox *BaudRateComboBox;
	QLabel *waitResponseLabel;
	QSpinBox *waitResponseSpinBox;
	QLabel *trafficLabel;
	QLabel *statusLabel;
	QPushButton *runButton;
    QPushButton *pauseButton;
    QCheckBox *startOnRun;
    QString m_sSettingsFile;
    QLabel *pixelBrightness;
    QPoint mousePosition;

	QSerialPort serial;
	QByteArray response;
	QTimer timer;
};

#endif // DIALOG_H
