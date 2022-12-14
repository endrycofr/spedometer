#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "temperature.h"
#include "spedometer.h"
#include "rpm.h"
#include "temp_ruangan.h"
#include "avg.h"
#include "odo.h"
#include "rest.h"
#include "baterai.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    spedometer kecepatan;
//    DigitalClock waktu ;
    temperature mesin;
     rpm roda;
     temp_ruangan panas;
     avg irit;
     odo km;
     rest istirahat;
     baterai lama;

//    engine.rootContext()->setContextProperty("waktu", &waktu);

    engine.rootContext()->setContextProperty("kecepatan", &kecepatan);

    engine.rootContext()->setContextProperty("mesin", &mesin);

    engine.rootContext()->setContextProperty("roda", &roda);
    engine.rootContext()->setContextProperty("panas", &panas);
    engine.rootContext()->setContextProperty("irit", &irit);
    engine.rootContext()->setContextProperty("km", &km);
    engine.rootContext()->setContextProperty("istirahat", &istirahat);
    engine.rootContext()->setContextProperty("lama", &lama);


//    qmlRegisterType<ExampleClass>("KelasContoh", 1, 0, "KelasContoh");

            const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}


