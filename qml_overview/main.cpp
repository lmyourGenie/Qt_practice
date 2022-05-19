#include <QDebug>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QString>
#include <iostream>

int main(int argc, char* argv[]) {
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    qDebug() << "1";
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app,
                     [url](QObject* obj, const QUrl& objUrl) {
                         if (!obj && url == objUrl) {
                             qDebug() << "3_1";
                             QCoreApplication::exit(-1);
                         } else {
                             qDebug() << "3_2";
                         }
                     },
                     Qt::QueuedConnection);
    qDebug() << "2";
    engine.load(url);
    qDebug() << "4";

    QString name = "name";
    qDebug() << "my name is : " << name;
    // 1234

    return app.exec();
}
