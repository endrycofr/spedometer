#ifndef AVG_H
#define AVG_H
#include <QObject>


class avg : public QObject
{
    Q_OBJECT
public:
    explicit avg (QObject *parent = nullptr);
    double trip;
    float a;

    Q_INVOKABLE float getrata();

signals:

};

#endif // SPEDOMETER_H
