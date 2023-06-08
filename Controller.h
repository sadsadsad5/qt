#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <QObject>
#include <QString>

class Controller : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString getUsbInfo READ getUsbInfo WRITE setUsbInfo NOTIFY usbInfoChanged)
public:
    Controller();
signals:
    void usbInfoChanged();
private:
    QString _usbInfo;
    QString getUsbInfo();
    void setUsbInfo(QString value);
    //Q_INVOKABLE void writeUSBDevicesToFile();
};

#endif // CONTROLLER_H
