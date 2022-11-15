#include "baterai.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>
baterai::baterai(QObject *parent) : QObject(parent)
{
perhitungan=101;

}
int baterai::getpersent(){
    for (int i = 0; i < 1; i++)
    {
        perhitungan=perhitungan-1;


        }

    if(perhitungan <= 0)
    {
        perhitungan=0;
    }

//        qDebug() << suhu;




return perhitungan;
}

