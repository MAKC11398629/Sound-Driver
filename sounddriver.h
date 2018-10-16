#ifndef SOUNDDRIVER_H
#define SOUNDDRIVER_H

#include <QObject>
#include <QtAndroidExtras/QAndroidJniObject>

class SoundDriver : public QObject
{
    Q_OBJECT


public:
    explicit SoundDriver(QObject *parent = nullptr);


signals:
    void messageReceived(QString msg);

public slots:
    void sendMessage(QString msg);
    void initJcode();

private:
    QString m_message;

};

#endif // SOUNDDRIVER_H
