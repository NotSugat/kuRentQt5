#ifndef SQLBIKEMODEL_H
#define SQLBIKEMODEL_H

#include <QSqlTableModel>
#include <QObject>

class SqlBikeModel : public QSqlTableModel
{
public:
    explicit SqlBikeModel(QObject *parent = nullptr);

    enum Roles {
        IdRole = Qt::UserRole,
        FNameRole,
        LNameRole,
        PhoneNumberRole,
        GenderRole,
        AddressRole,
        OwnerUrlRole,
        VehicleTypeRole,
        ModelRole,
        PlateNumberRole,
        PriceRole,
        StartDateRole,
        EndDateRole,
        UrlRole,
        Available,
        ConditionRole
    };


    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

public slots:
    void updateModel();
};

#endif // SQLBIKEMODEL_H
