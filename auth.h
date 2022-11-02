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
    Q_PROPERTY(QString Username READ Username WRITE setUsername NOTIFY UsernameChanged)
    Q_PROPERTY(QString FirstName READ FirstName WRITE setFirstName NOTIFY FirstNameChanged)
    Q_PROPERTY(QString LastName READ LastName WRITE setLastName NOTIFY LastNameChanged)
    Q_PROPERTY(QString Number READ Number WRITE setNumber NOTIFY NumberChanged)


public:
    explicit Database(QObject *parent = nullptr);
    ~Database();
    void connectToDataBase();

    bool loginSession() const;
    int user_id;




    int UserId() const;
    void setUserId(int newUserId);

    void setFname(const QString &newFnameREAD);

    const QString &Fname() const;

    const QString &Username() const;
    void setUsername(const QString &newUsername);

    const QString &FirstName() const;
    void setFirstName(const QString &newFirstName);

    const QString &LastName() const;
    void setLastName(const QString &newLastName);

    const QString &Number() const;
    void setNumber(const QString &newNumber);

private:
    QSqlDatabase    db;

    bool openDataBase();
    bool restoreDataBase();
    bool createTable();
    void closeDataBase();


    bool m_loginSession = false;

    int m_UserId;

    QString m_FnameREAD;

    QString m_Fname;

    QString m_Username;

    QString m_FirstName;

    QString m_LastName;

    QString m_Number;

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
    void FnameChanged();
    void UsernameChanged();
    void FirstNameChanged();
    void LastNameChanged();
    void NumberChanged();
};

#endif // DATABASE_H
