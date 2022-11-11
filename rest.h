#ifndef REST_H
#define REST_H

#include <QObject>


class rest : public QObject
{
    Q_OBJECT
public:
    explicit rest (QObject *parent = nullptr);
    int berhenti;
    float y;

    Q_INVOKABLE int getsisa();

signals:

};

#endif // SPEDOMETER_H
