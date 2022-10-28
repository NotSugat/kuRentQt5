#include "vechicledatabase.h"

VechicleDatabase::VechicleDatabase(QObject *parent) : QObject(parent)
{

}

void VechicleDatabase::connectToDataBase()
{
    if(!QFile("/home/crux/qtProject/kuRentQt5/database/" DATABASE_NAME).exists()){
        this->restoreDataBase();
    } else {
        this->openDataBase();
    }
}



bool VechicleDatabase::restoreDataBase()
{
    if(this->openDataBase()){
        return (this->createTable()) ? true : false;
    } else {
        qDebug() << "Failed to restore the database";
        return false;
    }
    return false;
}

bool VechicleDatabase::openDataBase()
{
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setHostName(DATABASE_HOSTNAME);
    db.setDatabaseName("/home/crux/qtProject/kuRentQt5/database/" DATABASE_NAME);
    if(db.open()){
        qDebug() << "connected to db";
        return true;
    } else {
        qDebug() << "not connected";
        return false;
    }
}


bool VechicleDatabase::createTable()
{
    QSqlQuery query;
    if(!query.exec( "CREATE TABLE " TABLE " ("
                            "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                            TABLE_NAME     " VARCHAR(255)    NOT NULL,"
                            TABLE_PHONENUM     " VARCHAR(255)    NOT NULL,"
                            TABLE_VEHICLETYPE       " VARCHAR(255)    NOT NULL,"
                            TABLE_MODEL    " VARCHAR(255)    NOT NULL,"
                            TABLE_STARTDATE     " VARCHAR(255)    NOT NULL,"
                            TABLE_ENDDATE     " VARCHAR(255)    NOT NULL,"
                            TABLE_PICKTIME     " VARCHAR(255)    NOT NULL,"
                            TABLE_DROPTIME     " VARCHAR(255)    NOT NULL"
                        " )"
                    )){
        qDebug() << "DataBase: error of create " << TABLE;
        qDebug() << query.lastError().text();
        return false;
    } else {
        return true;
    }
    return false;
}

void VechicleDatabase::closeDataBase()
{
    db.close();
}

bool VechicleDatabase::insertIntoTable(const QVariantList &data)
{
    QSqlQuery query;
    query.prepare("INSERT INTO " TABLE " ( " TABLE_NAME ", "
                                             TABLE_PHONENUM ", "
                                             TABLE_VEHICLETYPE ", "
                                             TABLE_MODEL ", "
                                             TABLE_STARTDATE ", "
                                             TABLE_ENDDATE ", "
                                             TABLE_PICKTIME ", "
                                             TABLE_DROPTIME " ) "
                  "VALUES (:Name, :PhoneNum, :VehicleType, :Model, :StartDate, :EndDate, :PickTime, :DropTime)");
//    query.bindValue(":Name",       data[0].toString());
//    query.bindValue(":PhoneNum",       data[1].toString());
    query.bindValue(":VehicleType",       data[0].toString());
    query.bindValue(":Model",       data[1].toString());
    query.bindValue(":StartDate",       data[2].toString());
    query.bindValue(":EndDate",       data[3].toString());
    query.bindValue(":PickTime",       data[4].toString());
    query.bindValue(":DropTime",       data[5].toString());


    if(!query.exec()){
        qDebug() << "error insert into " << TABLE;
        qDebug() << query.lastError().text();
        return false;
    } else {
        return true;
    }
    return false;
}

bool VechicleDatabase::insertIntoTable(const QString &vehicleType, const QString &model, const QString &startDate, const QString &endDate, const QString &pickTime, const QString &dropTime)
{
    QVariantList data;
    data.append(vehicleType);
    data.append(model);
    data.append(startDate);
    data.append(endDate);
    data.append(pickTime);
    data.append(dropTime);

    if(insertIntoTable(data))
        return true;
    else
        return false;
}
