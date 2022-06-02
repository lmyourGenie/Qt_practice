#ifndef MYPROPERTY_H
#define MYPROPERTY_H

#include <QObject>

class MyProperty : public QObject {
    Q_OBJECT
    Q_PROPERTY(int jjanggu /*keyword*/ READ getJjanggu WRITE setJjanggu NOTIFY signalJjangguChanged)

public:
    explicit MyProperty(QObject* parent = 0);
    Q_INVOKABLE int getJjanggu() const;
    Q_INVOKABLE void setJjanggu(const int& arg);
    Q_INVOKABLE void playWithJjanggu();

signals:
    void signalJjangguChanged(const int& arg /*, const int& arg2*/) /* const*/;

private:
    int mJjanggu;
};

#endif  // MYPROPERTY_H
