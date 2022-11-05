#ifndef TEMPERATURE_H
#define TEMPERATURE_H
#include <QObject>
class temperature: public QObject
{
    Q_OBJECT
public:
    explicit temperature(QObject *parent = nullptr);

    int suhu;


    Q_INVOKABLE int getsuhu();

};
#endif // TEMPERATURE_H
