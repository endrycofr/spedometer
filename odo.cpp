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
//        std::uniform_real_distribution<double>distribution(9.6,10.4);
//        // random hex string generator

    for (int i = 0; i < 1; i++)
    {
        hasil=hasil+0.001;

        }

//                x = distribution(*QRandomGenerator::global());

//              hasil= roundf(x* 10) / 10;

return hasil;
}





