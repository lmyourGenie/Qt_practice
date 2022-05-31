import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Loader - Connections Practice")

    property bool isRunning: true

    // test 4
    // (4) Loader와 Connections를 사용
    Loader {
        id: dialoader
        source: "qrc:/MyAnimation.qml"
        onLoaded: {
            bind.target = dialoader.item
        }
    }
    Connections {
        id: bind
        target: dialoader.item
        // 시그널을 보내는 객체. 설정 안하면 default는 '부모'

        function onStartclicked() {
            console.log("connection main.qml: onStartclicked")
        }

        function onStopclicked() {
            console.log("connection main.qml: onStopclicked")
        }
    }
}
