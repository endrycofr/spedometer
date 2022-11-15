#include "odo.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>
odo::odo(QObject *parent) : QObject(parent)
{
    x = 0;

}

float odo::gettempuh(){


    for (int i = 0; i < 1; i++)
    {
        hasil=hasil+0.001;

        }
    if(hasil >= 43)
    {
        hasil=43;
    }

return hasil;
}





