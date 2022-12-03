#ifndef BIKERENTERDATABASE_H
#define BIKERENTERDATABASE_H

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
#define DATABASE_NAME       "renterDatabase.db"

#define TABLE1            "renterBikeTable"
#define TABLE_FNAME      "FirstName"
#define TABLE_LNAME      "LastName"
#define TABLE_PHONENUM      "PhoneNumber"
#define TABLE_GENDER      "Gender"
#define TABLE_ADDRESS      "Address"
#define TABLE_OWNERURL "OwnerUrl"
#define TABLE_VEHICLETYPE         "VehicleType"
#define TABLE_MODEL         "Model"
#define TABLE_PLATENUMBER   "PlateNumber"
#define TABLE_PRICE         "PricePerDay"
#define TABLE_TOTALPRICE         "TotalPrice"
#define TABLE_DROPLOCATION  "DropLocation"
#define TABLE_DAY     "LeaseDay"
#define TABLE_BIKEURL      "BikeUrl"

//#define TABLE_STARTDATE     "StartDate"
//#define TABLE_ENDDATE      "EndDate"


class BikeRenterDatabase : public QObject
{
    Q_OBJECT

public:
    explicit BikeRenterDatabase(QObject *parent = nullptr);
    void connectToVehicleDataBase();
private:
    QSqlDatabase    db;

    bool openDataBase();
    bool restoreDataBase();
    bool createTable();
    void closeDataBase();

public slots:
    bool insertIntoTable(const QVariantList &data);      // Adding entries to the table
    bool insertIntoTable(const QString &fname, const QString &lname, const QString &number, const QString &gender, const QString &address,const QString &ownerUrl, const QString &vehicleType,const QString &model, const QString &plateNumber, const QString &price, const QString &dropLocation, const QString &day, const QString &bikeUrl);



signals:

};

#endif // BIKERENTERDATABASE_H
