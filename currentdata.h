#ifndef CURRENTDATA_H
#define CURRENTDATA_H

#include <QObject>

class CurrentData : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString Fname READ Fname WRITE setFname NOTIFY FnameChanged)
    Q_PROPERTY(QString Lname READ Lname WRITE setLname NOTIFY LnameChanged)
    Q_PROPERTY(QString Number READ Number WRITE setNumber NOTIFY NumberChanged)
    Q_PROPERTY(QString Gender READ Gender WRITE setGender NOTIFY GenderChanged)
    Q_PROPERTY(QString Location READ Location WRITE setLocation NOTIFY LocationChanged)
    Q_PROPERTY(QString Url READ Url WRITE setUrl NOTIFY UrlChanged)
    Q_PROPERTY(QString VehicleType READ VehicleType WRITE setVehicleType NOTIFY VehicleTypeChanged)
    Q_PROPERTY(QString NumberPlate READ NumberPlate WRITE setNumberPlate NOTIFY NumberPlateChanged)
    Q_PROPERTY(QString Model READ Model WRITE setModel NOTIFY ModelChanged)
    Q_PROPERTY(QString Price READ Price WRITE setPrice NOTIFY PriceChanged)
    Q_PROPERTY(QString BikeUrl READ BikeUrl WRITE setBikeUrl NOTIFY BikeUrlChanged)

    QString m_Fname;

    QString m_Lname;

    QString m_Number;

    QString m_Gender;

    QString m_Location;

    QString m_Url;

    QString m_VehicleType;

    QString m_NumberPlate;

    QString m_Model;

    QString m_Price;

    QString m_BikeUrl;

public:
    explicit CurrentData(QObject *parent = nullptr);



    const QString &Fname() const;
    void setFname(const QString &newFname);

    const QString &Lname() const;
    void setLname(const QString &newLname);

    const QString &Number() const;
    void setNumber(const QString &newNumber);

    const QString &Gender() const;
    void setGender(const QString &newGender);

    const QString &Location() const;
    void setLocation(const QString &newLocation);

    const QString &Url() const;
    void setUrl(const QString &newUrl);

    const QString &VehicleType() const;
    void setVehicleType(const QString &newVehicleType);

    const QString &NumberPlate() const;
    void setNumberPlate(const QString &newNumberPlate);

    const QString &Model() const;
    void setModel(const QString &newModel);

    const QString &Price() const;
    void setPrice(const QString &newPrice);

    const QString &BikeUrl() const;
    void setBikeUrl(const QString &newBikeUrl);

signals:

    void FnameChanged();
    void LnameChanged();

    void NumberChanged();

    void GenderChanged();

    void LocationChanged();

    void UrlChanged();

    void VehicleTypeChanged();

    void NumberPlateChanged();

    void ModelChanged();

    void PriceChanged();

    void BikeUrlChanged();

public slots:
    void setCurrentData(const QString &fname, const QString &lname, const QString &number, const QString &gender, const QString &location, const QString &url, const QString &vehicleType, const QString &numberPlate, const QString &model, const QString &price, const QString &bikeUrl);


};

#endif // CURRENTDATA_H
