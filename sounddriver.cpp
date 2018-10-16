#include "sounddriver.h"


SoundDriver::SoundDriver(QObject *parent) : QObject(parent)
{


}

void SoundDriver::sendMessage(QString msg)
{


}

void SoundDriver::initJcode()
{
    QAndroidJniObject myJavaString("org/qtproject/example/SoundDriver");
    myJavaString.callMethod<void>("init");
    myJavaString.callMethod<void>("sendRandData");
}

