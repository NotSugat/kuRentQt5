#ifndef BIKETEST_H
#define BIKETEST_H

#include <QSqlQueryModel>
#include <QSqlRecord>
#include <QHash>
#include <QVariant>

class SqlQueryModel: public QSqlQueryModel
{
    Q_OBJECT
    QHash<int,QByteArray> *hash;
public:
    explicit SqlQueryModel(QObject * parent) : QSqlQueryModel(parent)
    {
        hash = new QHash<int,QByteArray>;
        hash->insert(Qt::UserRole,      QByteArray("someRoleName"));
        hash->insert(Qt::UserRole + 1,  QByteArray("otherRoleName"));
    }
    QVariant data(const QModelIndex &index, int role) const
    {
       if(role < Qt::UserRole) {
          return QSqlQueryModel::data(index, role);
       }
       QSqlRecord r = record(index.row());
       return r.value(QString(hash->value(role))).toString();
    }
    inline RoleNameHash roleNames() const { return *hash; }
};
#endif // BIKETEST_H
