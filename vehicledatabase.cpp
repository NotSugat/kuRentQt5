#include "vehicledatabase.h"
#include "auth.h"

VehicleDatabase::VehicleDatabase(QObject *parent)
{

}

VehicleDatabase::~VehicleDatabase()
{

}

void VehicleDatabase::connectToDataBase()
{
//    qDebug() << user_id



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




bool VehicleDatabase::createTable()
{
    QSqlQuery query;
    if(!query.exec( "CREATE TABLE " TABLE1 " ("
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
        qDebug() << "DataBase: error of create " << TABLE1;
        qDebug() << query.lastError().text();
        return false;
    } else {
        return true;
    }
    return false;
}

void VehicleDatabase::closeDataBase()
{
    db.close();
}

bool VehicleDatabase::insertIntoTable(const QVariantList &data)
{
    QSqlQuery query;
    query.prepare("INSERT INTO " TABLE1 " ( " TABLE_NAME ", "
                                             TABLE_PHONENUM ", "
                                             TABLE_VEHICLETYPE ", "
                                             TABLE_MODEL ", "
                                             TABLE_STARTDATE ", "
                                             TABLE_ENDDATE ", "
                                             TABLE_PICKTIME ", "
                                             TABLE_DROPTIME " ) "
                  "VALUES (:OwnerName, :PhoneNum, :VehicleType, :Model, :StartDate, :EndDate, :PickTime, :DropTime)");

//    QSqlQuery quary(QSqlDatabase::database(DATABASE_NAME));
//    quary.prepare(QString("SELECT * FROM authTable WHERE FirstName = :Fname OR LastName = :Lname AND PhoneNumber = :Number"));



    query.bindValue(":OwnerName",       data[0].toString());
    query.bindValue(":Number",       data[1].toString());
    query.bindValue(":VehicleType",       data[2].toString());
    query.bindValue(":Model",       data[3].toString());
    query.bindValue(":StartDate",       data[4].toString());
    query.bindValue(":EndDate",       data[5].toString());
    query.bindValue(":PickTime",       data[6].toString());
    query.bindValue(":DropTime",       data[7].toString());


    if(!query.exec()){
        qDebug() << "error insert into " << TABLE1;
        qDebug() << query.lastError().text();
        return false;
    } else {
        return true;
    }
    return false;
}

//int VehicleDatabase::getLoginInfo(const QString &email)
//{
//    QSqlQuery query(QSqlDatabase::database(DATABASE_NAME));
//    query.prepare(QString("SELECT * FROM authTable WHERE Email = :Email OR Username = :Email  "));

//    query.bindValue(":Email", email);

//    if(!query.exec()) {
//        qDebug() << "failed to execute";
//    } else {
//        while (query.next()) {
//            int idFromDb = query.value(0).toInt();
//            QString emailFromDb = query.value(1).toString();
//            QString usernameFromDb = query.value(3).toString();


//            if( (email == usernameFromDb || email == emailFromDb)) {
//                qDebug() << idFromDb;
//                return idFromDb;

//            }
//        }

//    }

//}


bool VehicleDatabase::insertIntoTable(const QString &vehicleType, const QString &model, const QString &startDate, const QString &endDate, const QString &pickTime, const QString &dropTime)
{
    QVariantList data;
    QSqlQuery query(QSqlDatabase::database("Auth.db"));
    query.prepare(QString("SELECT * FROM authTable WHERE FirstName = :Fname OR LastName = :Lname AND PhoneNumber = :Number"));
    QString name;
    QString number;

    query.bindValue(":Fname", name);
    query.bindValue("Number", number);
    qDebug() <<name;
    data.append(name);
    data.append(number);
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

