#ifndef SPEDOMETER_H
#define SPEDOMETER_H

#include <QObject>

class spedometer : public QObject
{
    Q_OBJECT
public:
    explicit spedometer(QObject *parent = nullptr);
    int result;
    int speed;


    Q_INVOKABLE int getData();

signals:

};

#endif // SPEDOMETER_H
