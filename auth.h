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
#define TABLE_GENDER "Gender"
#define TABLE_SOURCE "ProfileURL"




class Database : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int UserId READ UserId WRITE setUserId NOTIFY UserIdChanged)
    Q_PROPERTY(QString Username READ Username WRITE setUsername NOTIFY UsernameChanged)
    Q_PROPERTY(QString FirstName READ FirstName WRITE setFirstName NOTIFY FirstNameChanged)
    Q_PROPERTY(QString LastName READ LastName WRITE setLastName NOTIFY LastNameChanged)
    Q_PROPERTY(QString Number READ Number WRITE setNumber NOTIFY NumberChanged)
    Q_PROPERTY(QString Gender READ Gender WRITE setGender NOTIFY GenderChanged)
    Q_PROPERTY(QString ProfileUrl READ ProfileUrl WRITE setProfileUrl NOTIFY ProfileUrlChanged)
    Q_PROPERTY(QString Location READ Location WRITE setLocation NOTIFY LocationChanged)
    Q_PROPERTY(QString Email READ Email WRITE setEmail NOTIFY EmailChanged)


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

    const QString &Gender() const;
    void setGender(const QString &newGender);

    const QString &ProfileUrl() const;
    void setProfileUrl(const QString &newProfileUrl);

    const QString &Location() const;
    void setLocation(const QString &newLocation);

    const QString &Email() const;
    void setEmail(const QString &newEmail);

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

    QString m_Gender;

    QString m_ProfileUrl;

    QString m_Location;

    QString m_Email;

public slots:
    bool insertIntoTable(const QVariantList &data);      // Adding entries to the table
    bool insertIntoTable(const QString &email, const QString &password , const QString &username,const QString &fname, const QString &lname, const QString &location, const QString &role, const QString &number, const QString &gender, const QString &profileUrl );
    //bool validation(const QString &email, const QString &password,  const QString &username);
    QString validation(const QString &email, const QString &password,  const QString &username);





signals:

    void UserIdChanged();
    void FnameChanged();
    void UsernameChanged();
    void FirstNameChanged();
    void LastNameChanged();
    void NumberChanged();

    void GenderChanged();
    void ProfileUrlChanged();
    void LocationChanged();
    void EmailChanged();
};

#endif // DATABASE_H
