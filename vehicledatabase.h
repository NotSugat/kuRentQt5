#ifndef VECHICLEDATABASE_H
#define VECHICLEDATABASE_H

#include <QObject>
#include <QDebug>
#include <QSql>
#include <QSqlQuery>
#include <QSqlError>
#include <QSqlDatabase>
#include <QFile>
#include <QDate>
#include <QDebug>
#define DATABASE_HOSTNAME   "NameDataBase"
#define DATABASE_NAME       "vechicleDatabase.db"

#define TABLE                "vehicleTable"
#define TABLE_NAME      "OwnerName"
#define TABLE_PHONENUM      "PhoneNumber"
#define TABLE_VEHICLETYPE         "VehicleType"
#define TABLE_MODEL         "Model"
#define TABLE_STARTDATE     "StartDate"
#define TABLE_ENDDATE      "EndDate"
#define TABLE_PICKTIME      "PickUpTime"
#define TABLE_DROPTIME      "DropOffTime"



class VehicleDatabase : public QObject
{
    Q_OBJECT
public:
    explicit VehicleDatabase(QObject *parent = nullptr);
//    ~VehicleDatabase();
    void connectToDataBase();
    void connectToExDatabase();

private:
    QSqlDatabase    db;

    bool openDataBase();
    bool openExDataBase();
    bool restoreDataBase();
    bool restoreExDataBase();
    bool createTable();
    void closeDataBase();

public slots:
    bool insertIntoTable(const QVariantList &data);      // Adding entries to the table
    bool insertIntoTable(const QString &vehicleType, const QString &model, const QString &startDate,const QString &endDate, const QString &pickTime, const QString &dropTime);



};

#endif // VECHICLEDATABASE_H
