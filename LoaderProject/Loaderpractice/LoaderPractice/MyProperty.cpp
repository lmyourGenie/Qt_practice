#include "MyProperty.h"
#include <QDebug>

MyProperty::MyProperty(QObject* parent) : QObject(parent), mJjanggu(0) {
    qDebug() << "@@@@ Constructor call";
    // qDebug("Constructor call");
}

int MyProperty::getJjanggu() const {
    return mJjanggu;
}

void MyProperty::setJjanggu(const int& arg) {
    if (mJjanggu != arg) {
        mJjanggu = arg;
        qDebug("@@ called setJjanggu");

        emit signalJjangguChanged(mJjanggu /*, 100 + mJjanggu*/);
        // signal에 인자를 한개, 두개, ... 여러개 넣어서 보낼 수 있음
        // 혹은 안넣을 수도 있음(Notify만 하는 용도)

        // emit하지 않으면 binding 한 애들의 값을 업데이트 하지 못함
    }
}

void MyProperty::playWithJjanggu() {
    mJjanggu -= 1;
    // 1. 시그널 안보냄
    // >> print 8

    // 2. 시그널 보냄
    emit signalJjangguChanged(mJjanggu);
    // >> print 8 즉, emit을 하든 말든 업데이트
}
