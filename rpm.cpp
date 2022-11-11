#include "rpm.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>
rpm::rpm(QObject *parent) : QObject(parent)
{
result=0;
}
int rpm::getputaran(){
      std::uniform_int_distribution<int>distribution(5,7);
      for (int i = 0; i < 1000; i++)
      {
          result=result+1;

          }
      if(result >= 7000){
          result = distribution(*QRandomGenerator::global());
              result=result*1000;

      }

//          qDebug() << result;

return result;
}
