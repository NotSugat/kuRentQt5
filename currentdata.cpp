#include "currentdata.h"

CurrentData::CurrentData(QObject *parent) : QObject(parent)
{

}

void CurrentData::setCurrentData(const QString &fname, const QString &lname, const QString &number, const QString &gender, const QString &location, const QString &url, const QString &vehicleType, const QString &numberPlate, const QString &model, const QString &price, const QString &bikeUrl)
{
    setFname(fname);
    setLname(lname);
    setNumber(number);
    setGender(gender);
    setLocation(location);
    setUrl(url);
    setVehicleType(vehicleType);
    setNumberPlate(numberPlate);
    setModel(model);
    setPrice(price);
    setBikeUrl(bikeUrl);

}


// setter getter function for all the Q_property

const QString &CurrentData::Fname() const
{
    return m_Fname;
}

void CurrentData::setFname(const QString &newFname)
{
    if (m_Fname == newFname)
        return;
    m_Fname = newFname;
    emit FnameChanged();
}



const QString &CurrentData::Lname() const
{
    return m_Lname;
}

void CurrentData::setLname(const QString &newLname)
{
    if (m_Lname == newLname)
        return;
    m_Lname = newLname;
    emit LnameChanged();
}

const QString &CurrentData::Number() const
{
    return m_Number;
}

void CurrentData::setNumber(const QString &newNumber)
{
    if (m_Number == newNumber)
        return;
    m_Number = newNumber;
    emit NumberChanged();
}

const QString &CurrentData::Gender() const
{
    return m_Gender;
}

void CurrentData::setGender(const QString &newGender)
{
    if (m_Gender == newGender)
        return;
    m_Gender = newGender;
    emit GenderChanged();
}

const QString &CurrentData::Location() const
{
    return m_Location;
}

void CurrentData::setLocation(const QString &newLocation)
{
    if (m_Location == newLocation)
        return;
    m_Location = newLocation;
    emit LocationChanged();
}

const QString &CurrentData::Url() const
{
    return m_Url;
}

void CurrentData::setUrl(const QString &newUrl)
{
    if (m_Url == newUrl)
        return;
    m_Url = newUrl;
    emit UrlChanged();
}

const QString &CurrentData::VehicleType() const
{
    return m_VehicleType;
}

void CurrentData::setVehicleType(const QString &newVehicleType)
{
    if (m_VehicleType == newVehicleType)
        return;
    m_VehicleType = newVehicleType;
    emit VehicleTypeChanged();
}

const QString &CurrentData::NumberPlate() const
{
    return m_NumberPlate;
}

void CurrentData::setNumberPlate(const QString &newNumberPlate)
{
    if (m_NumberPlate == newNumberPlate)
        return;
    m_NumberPlate = newNumberPlate;
    emit NumberPlateChanged();
}

const QString &CurrentData::Model() const
{
    return m_Model;
}

void CurrentData::setModel(const QString &newModel)
{
    if (m_Model == newModel)
        return;
    m_Model = newModel;
    emit ModelChanged();
}

const QString &CurrentData::Price() const
{
    return m_Price;
}

void CurrentData::setPrice(const QString &newPrice)
{
    if (m_Price == newPrice)
        return;
    m_Price = newPrice;
    emit PriceChanged();
}

const QString &CurrentData::BikeUrl() const
{
    return m_BikeUrl;
}

void CurrentData::setBikeUrl(const QString &newBikeUrl)
{
    if (m_BikeUrl == newBikeUrl)
        return;
    m_BikeUrl = newBikeUrl;
    emit BikeUrlChanged();
}
