#ifndef RENTERDATABASE_H
#define RENTERDATABASE_H

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
#define DATABASE_NAME       "bikeDatabase.db"

#define TABLE1                ""
#define TABLE_FNAME      "FirstName"
#define TABLE_LNAME      "LastName"
#define TABLE_PHONENUM      "PhoneNumber"
#define TABLE_GENDER      "Gender"
#define TABLE_ADDRESS      "Address"
#define TABLE_OWNERURL "OwnerUrl"
#define TABLE_VEHICLETYPE         "VehicleType"
#define TABLE_MODEL         "Model"
#define TABLE_PLATENUMBER   "PlateNumber"
#define TABLE_PRICE         "Price"
#define TABLE_STARTDATE     "StartDate"
#define TABLE_ENDDATE      "EndDate"
#define TABLE_BIKEURL      "BikeUrl"
#define TABLE_CONDITION   "Condition"
#define TABLE_AVAILABLE   "Availability"

class RenterDatabase : public QObject
{
    Q_OBJECT
public:
    explicit RenterDatabase(QObject *parent = nullptr);



signals:

};

#endif // RENTERDATABASE_H
