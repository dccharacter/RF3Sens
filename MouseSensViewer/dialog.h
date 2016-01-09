#ifndef DIALOG_H
#define DIALOG_H

#include <QDialog>
#include <QTimer>

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
    QString m_sSettingsFile;

	QSerialPort serial;
	QByteArray response;
	QTimer timer;
};

#endif // DIALOG_H
