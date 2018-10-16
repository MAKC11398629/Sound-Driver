#ifndef UPLOADER_H
#define UPLOADER_H

#include <QObject>

class Uploader : public QObject
{
    Q_OBJECT

public:
    explicit Uploader(QObject *parent = nullptr);

    QString leText() const;



signals:
    void leTextChanged();

private slots:
    void updateLeText();
private:
    QString m_leText;
};

#endif // UPLOADER_H
