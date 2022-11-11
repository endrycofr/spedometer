#include "rest.h"
#include <QRandomGenerator64>
#include <QDebug>
#include <QRegularExpression>
#include <QUuid>
rest::rest(QObject *parent) : QObject(parent)
{
berhenti=465;
}
int rest::getsisa(){
      for (int i = 0; i < 1; i++)
      {
          berhenti=berhenti-1;


          }

return berhenti;
}
