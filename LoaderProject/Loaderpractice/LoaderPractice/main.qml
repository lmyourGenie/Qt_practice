import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Loader - Connections Practice")

    property bool isRunning: true

    // test 3
    MyAnimation {
        id: myAni
    }

    // (3) Connections 를 이용해서 Slot 생성
    Connections {
        target: myAni
        function onStartclicked() {
            console.log("connection main.qml: onStartclicked")
        }

        function onStopclicked() {
            console.log("connection main.qml: onStopclicked")
        }
    }
}
