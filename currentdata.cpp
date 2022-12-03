#include "currentdata.h"

CurrentData::CurrentData(QObject *parent) : QObject(parent)
{

}

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
