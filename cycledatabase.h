#ifndef CYCLEDATABASE_H
#define CYCLEDATABASE_H

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
#define DATABASE_NAME       "Auth.db"

#define TABLE1                "CycleTable"
#define TABLE_FNAME      "FirstName"
#define TABLE_LNAME      "LastName"
#define TABLE_PHONENUM      "PhoneNumber"
#define TABLE_VEHICLETYPE         "VehicleType"
#define TABLE_MODEL         "Model"
#define TABLE_STARTDATE     "StartDate"
#define TABLE_ENDDATE      "EndDate"
#define TABLE_PICKTIME      "PickUpTime"
#define TABLE_DROPTIME      "DropOffTime"

class CycleDatabase : public QObject
{
    Q_OBJECT
public:
    explicit CycleDatabase(QObject *parent = nullptr);
    ~CycleDatabase();
    void connectToCycleDataBase();

private:
    QSqlDatabase    db;

    bool openDataBase();
    bool restoreDataBase();
    bool createTable();
    void closeDataBase();

public slots:
    bool insertIntoTable(const QVariantList &data);      // Adding entries to the table
    bool insertIntoTable(const QString &fname, const QString &lname, const QString &number, const QString &vehicleType, const QString &model, const QString &startDate, const QString &endDate, const QString &pickTime, const QString &dropTime);

};

#endif // CYCLEDATABASE_H
