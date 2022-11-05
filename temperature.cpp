#include "temperature.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>

temperature::temperature(QObject *parent) : QObject(parent)
{
suhu=0;
}
int temperature::getsuhu(){
      std::uniform_int_distribution<int>distribution(140,145);
      for (int i = 0; i < 8; i++)
      {
          suhu=suhu+2;
  //        return speed;
          if(suhu >= 160){
                   suhu = distribution(*QRandomGenerator::global());
          }



      }
        // random hex string generator
//      suhu = distribution(*QRandomGenerator::global());

//        qDebug() << suhu;

return suhu;
}
