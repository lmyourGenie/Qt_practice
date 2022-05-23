#include <QDebug>
#include <QFontDatabase>
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
    const QUrl url(QStringLiteral("qrc:/asw/main.qml"));
    const QUrl url2(QStringLiteral("qrc:/asw/AnchorsExample.qml"));   // anchors.상하좌우 practice
    const QUrl url3(QStringLiteral("qrc:/asw/AnchorsExample2.qml"));  // anchors.baseline, clip, visual
    const QUrl url4(QStringLiteral("qrc:/asw/FontCheck.qml"));        // font check
    const QUrl url5(QStringLiteral("qrc:/asw/ImageExample.qml"));     // Image example

    qDebug() << "1";
    //    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app,
    //                     [url2](QObject* obj, const QUrl& objUrl) {
    //                         if (!obj && url3 == objUrl) {
    //                             qDebug() << "3_1";
    //                             QCoreApplication::exit(-1);
    //                         } else {
    //                             qDebug() << "3_2";
    //                         }
    //                     },
    //                     Qt::QueuedConnection);
    qDebug() << "2";
    //    engine.load(url);
    //    engine.load(url2);
    //    engine.load(url3);
    engine.load(url4);
    //    engine.load(url5);
    qDebug() << "4";
    QFontDatabase database;

    const QStringList fontFamilies = database.families();
    //    for (const QString& family : fontFamilies) {
    //                qDebug() << family;
    //    }

    QString name = "name";
    qDebug() << "my name is : " << name;
    // 1234

    return app.exec();
}
