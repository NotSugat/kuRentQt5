#include "vehicledatabase.h"


VehicleDatabase::VehicleDatabase(QObject *parent)
{
}

VehicleDatabase::~VehicleDatabase()
{

}

void VehicleDatabase::connectToVehicleDataBase()
{
    if(!QFile("/home/crux/qtProject/kuRentQt5/database/" DATABASE_NAME).exists()){
            this->restoreDataBase();
        } else {
            this->openDataBase();
        }
}

bool VehicleDatabase::restoreDataBase()
{
    if(this->openDataBase()){
        return (this->createTable()) ? true : false;
    } else {
        qDebug() << "Failed to restore the database";
        return false;
    }
    return false;
}


bool VehicleDatabase::openDataBase()
{
    db = QSqlDatabase::addDatabase("QSQLITE", "bikeDb");
    db.setHostName(DATABASE_HOSTNAME);
    db.setDatabaseName("/home/crux/qtProject/kuRentQt5/database/" DATABASE_NAME);
    if(db.open()){
        qDebug() << "connected to bike db";
        return true;
    } else {
        qDebug() << "not connected";
        return false;
    }



}




bool VehicleDatabase::createTable()
{

    QSqlQuery query(QSqlDatabase::database("bikeDb"));
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
                            TABLE_STARTDATE     " VARCHAR(255)    NOT NULL,"
                            TABLE_ENDDATE     " VARCHAR(255)    NOT NULL,"
                            TABLE_BIKEURL     " VARCHAR(255)    NOT NULL,"
                            TABLE_AVAILABLE     " VARCHAR(255)    NOT NULL,"
                            TABLE_CONDITION    " VARCHAR(255)    NOT NULL"
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


void VehicleDatabase::closeDataBase()
{
    db.close();
}

bool VehicleDatabase::insertIntoTable(const QVariantList &data)
{
    QSqlQuery query(QSqlDatabase::database("bikeDb"));
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
                                             TABLE_STARTDATE ", "
                                             TABLE_ENDDATE ", "
                                             TABLE_BIKEURL ", "
                                             TABLE_AVAILABLE ", "
                                             TABLE_CONDITION " ) "
                  "VALUES (:FirstName, :LastName, :Number, :Gender, :Address, :OwnerUrl, :VehicleType, :Model, :PlateNumber, :Price, :StartDate, :EndDate, :BikeUrl, :Available , :Condition)");

    query.bindValue(":FirstName",       data[0].toString());
    query.bindValue(":LastName",       data[1].toString());
    query.bindValue(":Number",       data[2].toString());
    query.bindValue(":VehicleType",       data[3].toString());
    query.bindValue(":Model",       data[4].toString());
    query.bindValue(":PlateNumber",       data[5].toString());
    query.bindValue(":Price",       data[6].toString());
    query.bindValue(":StartDate",       data[7].toString());
    query.bindValue(":EndDate",       data[8].toString());
    query.bindValue(":BikeUrl",       data[9].toString());
    query.bindValue(":Available",       data[10].toString());
    query.bindValue(":Condition",       data[11].toString());
    query.bindValue(":Gender",       data[12].toString());
    query.bindValue(":Address",       data[13].toString());
    query.bindValue(":OwnerUrl",       data[14].toString());


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


bool VehicleDatabase::insertIntoTable(const QString &fname, const QString &lname, const QString &number, const QString &vehicleType, const QString &model,const QString &plateNumber, const QString &price,const QString &startDate, const QString &endDate, const QString &url, const QString &condition, const QString &gender, const QString &address, const QString &ownerUrl)
{
    QVariantList data;
    QString isAvailable = "Available";

    data.append(fname);
    data.append(lname);
    data.append(number);
    data.append(vehicleType);
    data.append(model);
    data.append(plateNumber);
    data.append(price);
    data.append(startDate);
    data.append(endDate);
    data.append(url);
    data.append(isAvailable);
    data.append(condition);
    data.append(gender);
    data.append(address);
    data.append(ownerUrl);

    if(insertIntoTable(data))
        return true;
    else
        return false;
}

void VehicleDatabase::updateAvailability()
{

}

