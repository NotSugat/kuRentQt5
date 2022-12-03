#include "bikerenterdatabase.h"

BikeRenterDatabase::BikeRenterDatabase(QObject *parent) : QObject(parent)
{

}

void BikeRenterDatabase::connectToVehicleDataBase()
{
    if(!QFile("/home/crux/qtProject/kuRentQt5/database/" DATABASE_NAME).exists()){
            this->restoreDataBase();
        } else {
            this->openDataBase();
        }
}

bool BikeRenterDatabase::openDataBase()
{
    db = QSqlDatabase::addDatabase("QSQLITE", "bikeRenterDb");
    db.setHostName(DATABASE_HOSTNAME);
    db.setDatabaseName("/home/crux/qtProject/kuRentQt5/database/" DATABASE_NAME);
    if(db.open()){
        qDebug() << "connected to bike renter db";
        return true;
    } else {
        qDebug() << "not connected";
        return false;
    }
}

bool BikeRenterDatabase::restoreDataBase()
{
    if(this->openDataBase()){
        return (this->createTable()) ? true : false;
    } else {
        qDebug() << "Failed to restore the database";
        return false;
    }
    return false;
}

bool BikeRenterDatabase::createTable()
{
    QSqlQuery query(QSqlDatabase::database("bikeRenterDb"));

    if(!query.exec( "CREATE TABLE " TABLE1 " ("
                            "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                            TABLE_FNAME     " VARCHAR(255)    NOT NULL,"
                            TABLE_LNAME     " VARCHAR(255)    NOT NULL,"
                            TABLE_PHONENUM     " VARCHAR(255)    NOT NULL,"
                            TABLE_GENDER     " VARCHAR(255)    NOT NULL,"
                            TABLE_ADDRESS     " VARCHAR(255)    NOT NULL,"
                            TABLE_OWNERURL     " VARCHAR(255)    NOT NULL,"
                            TABLE_VEHICLETYPE       " VARCHAR(255)    NOT NULL,"
                            TABLE_MODEL    " VARCHAR(255)    NOT NULL,"
                            TABLE_PLATENUMBER    " VARCHAR(255)    NOT NULL,"
                            TABLE_PRICE    " VARCHAR(255)    NOT NULL,"
                            TABLE_TOTALPRICE     " INT    NOT NULL,"
                            TABLE_DROPLOCATION     " VARCHAR(255)    NOT NULL,"
                            TABLE_DAY     " VARCHAR(255)    NOT NULL,"
                            TABLE_BIKEURL    " VARCHAR(255)    NOT NULL"
                        " )"
                    )){
        qDebug() << "DataBase: error of create " << TABLE1;
        qDebug() << query.lastError().text();
        return false;
    } else {
        return true;
    }
    closeDataBase();
    return false;


}

void BikeRenterDatabase::closeDataBase()
{
     db.close();
}

bool BikeRenterDatabase::insertIntoTable(const QVariantList &data)
{
    QSqlQuery query(QSqlDatabase::database("bikeRenterDb"));
    query.prepare("INSERT INTO " TABLE1 " ( " TABLE_FNAME ", "
                                             TABLE_LNAME ", "
                                             TABLE_PHONENUM ", "
                                             TABLE_GENDER ", "
                                             TABLE_ADDRESS ", "
                                             TABLE_OWNERURL ", "
                                             TABLE_VEHICLETYPE ", "
                                             TABLE_MODEL ", "
                                             TABLE_PLATENUMBER ", "
                                             TABLE_PRICE ", "
                                             TABLE_TOTALPRICE ", "
                                             TABLE_DROPLOCATION ", "
                                             TABLE_DAY ", "
                                             TABLE_BIKEURL " ) "
                  "VALUES (:FirstName, :LastName, :Number, :Gender, :Address, :OwnerUrl, :VehicleType, :Model, :PlateNumber, :Price, :TotalPrice, :DropLocation, :Day, :BikeUrl)");

    query.bindValue(":FirstName",       data[0].toString());
    query.bindValue(":LastName",       data[1].toString());
    query.bindValue(":Number",       data[2].toString());
    query.bindValue(":Gender",       data[3].toString());
    query.bindValue(":Address",       data[4].toString());
    query.bindValue(":OwnerUrl",       data[5].toString());
    query.bindValue(":VehicleType",       data[6].toString());
    query.bindValue(":Model",       data[7].toString());
    query.bindValue(":PlateNumber",       data[8].toString());
    query.bindValue(":Price",       data[9].toString());
    query.bindValue(":TotalPrice",       data[10].toString());
    query.bindValue(":DropLocation",       data[11].toString());
    query.bindValue(":Day",       data[12].toString());
    query.bindValue(":BikeUrl",       data[13].toString());




    if(!query.exec()){
        qDebug() << "error insert into " << TABLE1;
        qDebug() << query.lastError().text();
        return false;
    } else {
        qDebug() << "added to vehicle db";
        return true;
    }
    return false;
}

bool BikeRenterDatabase::insertIntoTable(const QString &fname, const QString &lname, const QString &number, const QString &gender, const QString &address,const QString &ownerUrl, const QString &vehicleType,const QString &model, const QString &plateNumber, const QString &price, const QString &dropLocation, const QString &day ,const QString &bikeUrl)
{
     QVariantList data;
     int totalPrice = price.toInt() * day.toInt();


    data.append(fname);
    data.append(lname);
    data.append(number);
    data.append(gender);
    data.append(address);
    data.append(ownerUrl);
    data.append(vehicleType);
    data.append(model);
    data.append(plateNumber);
    data.append(price);
    data.append(totalPrice);
    data.append(dropLocation);
    data.append(day);
    data.append(bikeUrl);


    if(insertIntoTable(data))
        return true;
    else
        return false;
}
