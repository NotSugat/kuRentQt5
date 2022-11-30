#include "bikemodel.h"


BikeModel::BikeModel(QObject *parent) : QSqlQueryModel(parent)
{ 
    this->updateModel();
}

//QVariant BikeModel::data(const QModelIndex &index, int role) const
//{
//    if (role < Qt::UserRole)
//            return QSqlTableModel::data(index, role);

//        const QSqlRecord sqlRecord = record(index.row());
//        return sqlRecord.value(role - Qt::UserRole);
//}

QHash<int, QByteArray> BikeModel::roleNames() const
{

    QHash<int, QByteArray> roles;

    roles[IdRole] = "id";
    roles[FNameRole] = "fname";
    roles[LNameRole] = "lname";
    roles[PhoneNumberRole] = "phoneNumber";
    roles[PlateNumberRole] = "plateNumber";
    roles[PriceRole] = "Price";
    roles[StartDateRole]= "StartDate";
    roles[EndDateRole] = "EndDate";
    roles[BikeRole] = "EndDate";
    roles[ConditionRole] = "EndDate";

    return roles;
}

void BikeModel::updateModel()
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("/home/crux/qtProject/kuRentQt5/database/bikeDatabase.db" );
    if(db.open()){

    this->setQuery("SELECT * FROM bikeTable");
    } else {
        qDebug() << "datbase not open";
    }
}

int BikeModel::getId(int row)
{
    return this->data(this->index(row, 0), IdRole).toInt();
}
