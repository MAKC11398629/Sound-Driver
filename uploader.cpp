#include "uploader.h"
#include <QDebug>
Uploader::Uploader(QObject *parent) : QObject(parent)
{
    connect(this, &Uploader::leTextChanged, this, &Uploader::updateLeText);
}

QString Uploader::leText() const
{
    return m_leText;
}


void Uploader::updateLeText()
{
        qDebug() << m_leText;
}
