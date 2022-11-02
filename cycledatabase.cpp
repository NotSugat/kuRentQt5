#include "cycledatabase.h"


CycleDatabase::CycleDatabase(QObject *parent)
{

//    QSqlQuery query(QSqlDatabase::database(DATABASE_NAME));

//    query.prepare(QString("SELECT * FROM authTable"));
//    query.exec();
//    while (query.next()) {
//            QString emailFromDb = query.value(1).toString();

//            qDebug() <<"email is:" << emailFromDb;

//        }



}

CycleDatabase::~CycleDatabase()
{

}

void CycleDatabase::connectToCycleDataBase()
{
    if(!QFile("/home/crux/qtProject/kuRentQt5/database/" DATABASE_NAME).exists()){
        this->restoreDataBase();
    } else {
        this->openDataBase();
    }
}

bool CycleDatabase::restoreDataBase()
{
    if(this->openDataBase()){
        return (this->createTable()) ? true : false;
    } else {
        qDebug() << "Failed to restore the database";
        return false;
    }
    return false;
}


bool CycleDatabase::openDataBase()
{
     db = QSqlDatabase::addDatabase("QSQLITE", "cycleDb");

    db.setDatabaseName("/home/crux/qtProject/kuRentQt5/database/" DATABASE_NAME);
    if(db.open()){
        qDebug() << "connected to cycle db";
        return true;
    } else {
        qDebug() << "not connected to cycle db";
        return false;
    }
}




bool CycleDatabase::createTable()
{
    QSqlQuery query(QSqlDatabase::database("cycleDb"));
    if(!query.exec( "CREATE TABLE " TABLE1 " ("
                            "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                            TABLE_FNAME     " VARCHAR(255)    NOT NULL,"
                            TABLE_LNAME     " VARCHAR(255)    NOT NULL,"
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

void CycleDatabase::closeDataBase()
{
    db.close();
}

bool CycleDatabase::insertIntoTable(const QVariantList &data)
{
    QSqlQuery query(QSqlDatabase::database("cycleDb"));
    query.prepare("INSERT INTO " TABLE1 " ( " TABLE_FNAME ", "
                                             TABLE_LNAME ", "
                                             TABLE_PHONENUM ", "
                                             TABLE_VEHICLETYPE ", "
                                             TABLE_MODEL ", "
                                             TABLE_STARTDATE ", "
                                             TABLE_ENDDATE ", "
                                             TABLE_PICKTIME ", "
                                             TABLE_DROPTIME " ) "
                  "VALUES (:FirstName, :LastName, :Number, :VehicleType, :Model, :StartDate, :EndDate, :PickTime, :DropTime)");

    query.bindValue(":FirstName",       data[0].toString());
    query.bindValue(":LastName",       data[1].toString());
    query.bindValue(":Number",       data[2].toString());
    query.bindValue(":VehicleType",       data[3].toString());
    query.bindValue(":Model",       data[4].toString());
    query.bindValue(":StartDate",       data[5].toString());
    query.bindValue(":EndDate",       data[6].toString());
    query.bindValue(":PickTime",       data[7].toString());
    query.bindValue(":DropTime",       data[8].toString());


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


bool CycleDatabase::insertIntoTable(const QString &fname, const QString &lname, const QString &number, const QString &vehicleType, const QString &model, const QString &startDate, const QString &endDate, const QString &pickTime, const QString &dropTime)
{
    QVariantList data;
    data.append(fname);
    data.append(lname);
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

