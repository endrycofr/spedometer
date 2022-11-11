#include "avg.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>
#include <math.h>
avg::avg(QObject *parent) : QObject(parent)
{
    a = 0;

}

float avg::getrata(){
        std::uniform_real_distribution<double>distribution(9.6,10.4);
        // random hex string generator


                a = distribution(*QRandomGenerator::global());

              trip= roundf(a* 10) / 10;
//
//        qDebug() << trip;

return trip;
}
