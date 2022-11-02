#include "auth.h"



Database::Database(QObject *parent)
{

}

Database::~Database()
{
}

void Database::connectToDataBase()
{
    if(!QFile("/home/crux/qtProject/kuRentQt5/database/" DATABASE_NAME).exists()){
        this->restoreDataBase();
    } else {
        this->openDataBase();
    }
}

bool Database::restoreDataBase()
{
    if(this->openDataBase()){
        return (this->createTable()) ? true : false;
    } else {
        qDebug() << "Failed to restore the database";
        return false;
    }
    return false;
}

bool Database::openDataBase()
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE" , "connectDb");
    if(QSqlDatabase::contains("connectDb")){
    db.setHostName(DATABASE_HOSTNAME);
    db.setDatabaseName("/home/crux/qtProject/kuRentQt5/database/" DATABASE_NAME);
    if(db.open()){
        qDebug() << "connected to db";
        return true;
    } else {
        qDebug() << "not connected";
        return false;
    }
    } else {
        return false;
    }

}

bool Database::createTable()
{
    if(QSqlDatabase::contains("connectDb")){
    QSqlQuery query(QSqlDatabase::database("connectDb"));
    if(!query.exec( "CREATE TABLE " TABLE " ("
                            "id INTEGER PRIMARY KEY AUTOINCREMENT, "
                            TABLE_EMAIL     " VARCHAR(255)    NOT NULL,"
                            TABLE_PASSWORD     " VARCHAR(255)    NOT NULL,"
                            TABLE_USERNAME       " VARCHAR(255)    NOT NULL,"
                            TABLE_FNAME    " VARCHAR(255)    NOT NULL,"
                            TABLE_LNAME     " VARCHAR(255)    NOT NULL,"
                            TABLE_LOCATION     " VARCHAR(255)    NOT NULL,"
                            TABLE_ROLE     " VARCHAR(255)    NOT NULL,"
                            TABLE_NUMBER     " VARCHAR(255)    NOT NULL"
                        " )"
                    )){
        qDebug() << "DataBase: error of create " << TABLE;
        qDebug() << query.lastError().text();
        return false;
    } else {
        return true;
    }

    } else {
        return false;
    }
    return false;
}
void Database::closeDataBase()
{
    db.close();
}

bool Database::insertIntoTable(const QVariantList &data)
{

    QSqlQuery query(QSqlDatabase::database("connectDb"));
    query.prepare("INSERT INTO " TABLE " ( " TABLE_EMAIL ", "
                                             TABLE_PASSWORD ", "
                                             TABLE_USERNAME ", "
                                             TABLE_FNAME ", "
                                             TABLE_LNAME ", "
                                             TABLE_LOCATION ", "
                                             TABLE_ROLE ", "
                                             TABLE_NUMBER " ) "
                  "VALUES (:Email, :Password, :Username, :Fname, :Lname, :Location, :Role, :Number)");
    query.bindValue(":Email",       data[0].toString());
    query.bindValue(":Password",       data[1].toString());
    query.bindValue(":Username",       data[2].toString());
    query.bindValue(":Fname",       data[3].toString());
    query.bindValue(":Lname",       data[4].toString());
    query.bindValue(":Location",       data[5].toString());
    query.bindValue(":Role",       data[6].toString());
    query.bindValue(":Number",       data[7].toString());


    if(!query.exec()){
        qDebug() << "error insert into " << TABLE;
        qDebug() << query.lastError().text();
        return false;
    } else {

        return true;
    }

    return false;
}



bool Database::insertIntoTable(const QString &email, const QString &password , const QString &username,const QString &fname, const QString &lname, const QString &location, const QString &role, const QString &number )
{
    QVariantList data;
    data.append(email);
    data.append(password);
    data.append(username);
    data.append(fname);
    data.append(lname);
    data.append(location);
    data.append(role);
    data.append(number);

    if(insertIntoTable(data))
        return true;
    else
        return false;
}


//Login validation funciton

QString Database::validation(const QString &email, const QString &password, const QString &username)
{

    QSqlQuery query(QSqlDatabase::database("connectDb"));
    query.prepare(QString("SELECT * FROM authTable"));
    if(!query.exec()) {
        qDebug() << "failed to execute";
    } else {
        while (query.next()) {
            int idFromDb = query.value(0).toInt();
            QString emailFromDb = query.value(1).toString();
            QString passwordFromDb = query.value(2).toString();
            QString usernameFromDb = query.value(3).toString();
            QString fName = query.value(4).toString();
            QString lastNameFromDb = query.value(5).toString();
            QString number = query.value(8).toString();
            QString roleFromDb = query.value(7).toString();

            if( (username == usernameFromDb || email == emailFromDb) && password == passwordFromDb) {
                setUserId(idFromDb);
                setFirstName(fName);
                setLastName(lastNameFromDb);
                setNumber(number);
                setUsername(fName);
                if(roleFromDb == "Renter") {
                    return "renter";
                } else if(roleFromDb == "Owner") {
                    return "owner";
                } else {
                    return "admin";
                }


//            } else {
//                qDebug() << "failed";
//                return "fail";
//            }

        }
    }
    return "fail";
    }

    return "fail";
}




int Database::UserId() const
{
    return m_UserId;
}

void Database::setUserId(int newUserId)
{
    if (m_UserId == newUserId)
        return;
    m_UserId = newUserId;
    emit UserIdChanged();
}



//username setter

const QString &Database::Username() const
{
    return m_Username;
}

void Database::setUsername(const QString &newUsername)
{
    if (m_Username == newUsername)
        return;
    m_Username = newUsername;
    emit UsernameChanged();
}

//first name setter and getter fucntion

const QString &Database::FirstName() const
{
    return m_FirstName;
}

void Database::setFirstName(const QString &newFirstName)
{
    if (m_FirstName == newFirstName)
        return;
    m_FirstName = newFirstName;
    emit FirstNameChanged();
}

const QString &Database::LastName() const
{
    return m_LastName;
}

void Database::setLastName(const QString &newLastName)
{
    if (m_LastName == newLastName)
        return;
    m_LastName = newLastName;
    emit LastNameChanged();
}

const QString &Database::Number() const
{
    return m_Number;
}

void Database::setNumber(const QString &newNumber)
{
    if (m_Number == newNumber)
        return;
    m_Number = newNumber;
    emit NumberChanged();
}
