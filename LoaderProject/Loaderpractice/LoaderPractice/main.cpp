#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "MyProperty.h"

int main(int argc, char* argv[]) {
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QScopedPointer<MyProperty> example(new MyProperty);
    qmlRegisterSingletonInstance("MyApi", 1, 0, "MyProperty", example.get());
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated, &app,
                     [url](QObject* obj, const QUrl& objUrl) {
                         if (!obj && url == objUrl) QCoreApplication::exit(-1);
                     },
                     Qt::QueuedConnection);
    engine.load(url);
    //    MyProperty* temp = new MyProperty();

    return app.exec();
}
