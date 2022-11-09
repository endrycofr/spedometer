#include "temp_ruangan.h"

#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>

temp_ruangan::temp_ruangan(QObject *parent) : QObject(parent)
{
suhu=0;

}
int temp_ruangan::getsuhu1(){

      std::uniform_int_distribution<int>distribution(29,30);

                   suhu = distribution(*QRandomGenerator::global());
//        qDebug() << suhu;




return suhu;
}

