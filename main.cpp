#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSqlDatabase>
#include <QSqlError>
#include <QtQml>

#include "auth.h"
#include "vehicledatabase.h"
#include "cycledatabase.h"
#include "bikemodel.h"
#include "sqlbikemodel.h"
#include "currentdata.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    Database database;
    database.connectToDataBase();
    VehicleDatabase vehicleDatabase;
    vehicleDatabase.connectToVehicleDataBase();
    CycleDatabase cycleDatabase;
    cycleDatabase.connectToCycleDataBase();
    CurrentData currentData;

     BikeModel *model = new BikeModel();

    qmlRegisterType<SqlBikeModel>("io.qt.examples.bikemodel", 1, 0, "SqlBikeModel");



    engine.rootContext()->setContextProperty("_model", model);
    engine.rootContext()->setContextProperty("database", &database);
    engine.rootContext()->setContextProperty("vehicleDatabase", &vehicleDatabase);
    engine.rootContext()->setContextProperty("cycleDatabase", &cycleDatabase);
    engine.rootContext()->setContextProperty("_currentData", &currentData);

    const QUrl url(QStringLiteral("qrc:/main.qml"));


    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
