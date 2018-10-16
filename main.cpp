#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QQmlComponent>
#include <QQuickItem>
#include "uploader.h"
#include "sounddriver.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);


    QQmlApplicationEngine engine;

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    QObject* root = engine.rootObjects()[0];
    Uploader *uploader = new Uploader(root);
    engine.rootContext()->setContextProperty("_uploader", uploader);

    SoundDriver* sd = new SoundDriver(root);
    sd->initJcode();
//    sd->sendMessage("hello");
    return app.exec();
}
