#ifndef DATABASE_H
#define DATABASE_H

#include <QDebug>
#include <QCryptographicHash>


#include <QObject>
#include <QSql>
#include <QSqlQuery>
#include <QSqlError>
#include <QSqlDatabase>
#include <QFile>
#include <QDate>
#include <QDebug>
#define DATABASE_HOSTNAME   "NameDataBase"
#define DATABASE_NAME       "Auth.db"

#define TABLE                "authTable"
#define TABLE_FNAME         "FirstName"
#define TABLE_LNAME         "LastName"
#define TABLE_EMAIL          "Email"
#define TABLE_USERNAME      "Username"
#define TABLE_PASSWORD       "Password"
#define TABLE_NUMBER         "PhoneNumber"
#define TABLE_LOCATION         "Location"
#define TABLE_ROLE        "Role"




class Database : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool loginSession READ loginSession WRITE setloginSession NOTIFY loginSessionChanged)
    Q_PROPERTY(int UserId READ UserId WRITE setUserId NOTIFY UserIdChanged)
public:
    explicit Database(QObject *parent = nullptr);
    ~Database();
    void connectToDataBase();

    bool loginSession() const;
    int user_id;




private:
    QSqlDatabase    db;

    bool openDataBase();
    bool restoreDataBase();
    bool createTable();
    void closeDataBase();


    bool m_loginSession = false;

    int m_UserId;

public slots:
    bool insertIntoTable(const QVariantList &data);      // Adding entries to the table
    bool insertIntoTable(const QString &email, const QString &password , const QString &username,const QString &fname, const QString &lname, const QString &location, const QString &role, const QString &number);
    //bool validation(const QString &email, const QString &password,  const QString &username);
    QString validation(const QString &email, const QString &password,  const QString &username);
    bool getLoginSession();
    void setloginSession(bool newLoginSession);


signals:
    void loginSessionChanged();
    void UserIdChanged();
};

#endif // DATABASE_H
