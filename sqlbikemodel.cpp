#include "sqlbikemodel.h"
#include <QDateTime>
#include <QDebug>
#include <QSqlError>
#include <QSqlRecord>
#include <QSqlQuery>


SqlBikeModel::SqlBikeModel(QObject *parent) : QSqlTableModel(parent)
{
    this->updateModel();
}

QVariant SqlBikeModel::data(const QModelIndex &index, int role) const
{
    if (role < Qt::UserRole)
            return QSqlTableModel::data(index, role);

        const QSqlRecord sqlRecord = record(index.row());
        return sqlRecord.value(role - Qt::UserRole);
}

QHash<int, QByteArray> SqlBikeModel::roleNames() const
{
    QHash<int, QByteArray> roles;

    roles[IdRole] = "id";
    roles[FNameRole] = "Fname";
    roles[LNameRole] = "Lname";
    roles[PhoneNumberRole] = "PhoneNumber";
    roles[GenderRole] = "Gender";
    roles[AddressRole] = "Address";
    roles[OwnerUrlRole] = "OwnerUrl";
    roles[VehicleTypeRole] = "VehicleType";
    roles[ModelRole] = "BikeModel";
    roles[PlateNumberRole] = "PlateNumber";
    roles[PriceRole] = "Price";
    roles[StartDateRole]= "StartDate";
    roles[EndDateRole] = "EndDate";
    roles[UrlRole] = "Url";
    roles[Available] = "Available";
    roles[ConditionRole] = "Condition";

    return roles;
}

void SqlBikeModel::updateModel()
{

    QSqlQuery query;
    if (!query.exec("SELECT * FROM bikeTable"))
        qFatal("Contacts SELECT query failed: %s", qPrintable(query.lastError().text()));

    setQuery(query);
    if (lastError().isValid())
        qFatal("Cannot set query on SqlContactModel: %s", qPrintable(lastError().text()));

}
