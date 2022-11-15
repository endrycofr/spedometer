#include "rest.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>
rest::rest(QObject *parent) : QObject(parent)
{
berhenti=43;
}
int rest::getsisa(){
      for (int i = 0; i < 1; i++)
      {
          berhenti=berhenti-1;


          }
      if(berhenti <= 0)
      {
          berhenti=0;
      }

return berhenti;
}
