#ifndef TEMP_RUANGAN_H
#define TEMP_RUANGAN_H

#include <QThread>

#include <QObject>
class temp_ruangan: public QObject
{
    Q_OBJECT
public:
    explicit temp_ruangan(QObject *parent = nullptr);

    int suhu;

    Q_INVOKABLE int getsuhu1();
signals:

};


#endif // TEMPERATURE_H
