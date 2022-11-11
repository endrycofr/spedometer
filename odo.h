#ifndef ODO_H
#define ODO_H

#include <QObject>


class odo : public QObject
{
    Q_OBJECT
public:
    explicit odo (QObject *parent = nullptr);
    double hasil;
    float x;

    Q_INVOKABLE float gettempuh();

signals:

};

#endif // SPEDOMETER_H
