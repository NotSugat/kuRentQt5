#ifndef BIKEMODEL_H
#define BIKEMODEL_H

#include <QHash>
#include <QObject>
#include <QVariant>
#include <QSqlQueryModel>
#include <QDebug>
#include <QDateTime>
#include <QDebug>
#include <QSqlError>
#include <QSqlRecord>
#include <QSqlQuery>
#include <QSqlTableModel>

class BikeModel : public QSqlQueryModel
{
    Q_OBJECT
public:
    explicit BikeModel(QObject *parent = nullptr);
    enum Roles {
        IdRole = Qt::UserRole + 1,
        FNameRole,
        LNameRole,
        PhoneNumberRole,
        PlateNumberRole,
        PriceRole,
        StartDateRole,
        EndDateRole,
        BikeRole,
        ConditionRole
    };
//    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const override;

protected:
     QHash<int, QByteArray> roleNames() const override;



signals:

public slots:
    void updateModel();
    int getId(int row);

};

#endif // BIKEMODEL_H
