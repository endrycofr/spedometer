#ifndef BATERAI_H
#define BATERAI_H

#include <QObject>


class baterai : public QObject
{
    Q_OBJECT
public:
    explicit baterai (QObject *parent = nullptr);
   int perhitungan;

    Q_INVOKABLE int getpersent();

signals:

};

#endif // BATERAI_H
