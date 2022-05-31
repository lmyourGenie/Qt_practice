import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Loader - Connections Practice")

    property bool isRunning: true

    // test2
    MyAnimation {
        id: myAni

        // (2) 다른 qml파일에서 선언한 signal에 대한 slot 생성
        onStartclicked: { console.log("onStartclicked")}
        onStopclicked: { console.log("onStopclicked") }
    }
}
