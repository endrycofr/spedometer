#ifndef RUANGAN_H
#define RUANGAN_H



#include <QObject>

class ruangan : public QObject
{
    Q_OBJECT
public:
    explicit ruangan(QObject *parent = nullptr);
    int panas;


    Q_INVOKABLE int getcelcius();

signals:

};

#endif //RPM_H
