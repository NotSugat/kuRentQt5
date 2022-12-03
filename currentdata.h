#ifndef CURRENTDATA_H
#define CURRENTDATA_H

#include <QObject>

class CurrentData : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString Fname READ Fname WRITE setFname NOTIFY FnameChanged)

public:
    explicit CurrentData(QObject *parent = nullptr);



signals:

    void FnameChanged();
};

#endif // CURRENTDATA_H
