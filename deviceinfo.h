#ifndef DEVICEINFO_H
#define DEVICEINFO_H
#include <QString>
#include <QObject>


class DeviceInfo : public QObject
{    Q_OBJECT

     Q_PROPERTY(QString getDeviceInfo READ getDeviceInfo WRITE setDeviceInfo NOTIFY deviceInfoChanged)

 public:
     DeviceInfo();
 signals:
     void deviceInfoChanged();
 private:
     QString _deviceInfo;
     QString getDeviceInfo();
     void setDeviceInfo(QString value);
};

#endif // DEVICEINFO_H
