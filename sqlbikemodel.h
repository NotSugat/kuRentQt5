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
        VehicleTypeRole,
        ModelRole,
        PlateNumberRole,
        PriceRole,
        StartDateRole,
        EndDateRole,
        UrlRole,
        ConditionRole
    };


    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

public slots:
    void updateModel();
};

#endif // SQLBIKEMODEL_H
