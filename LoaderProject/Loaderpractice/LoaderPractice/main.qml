import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Loader - Connections Practice")

    property bool isRunning: true

    // test 1
    MyAnimation {
        running: isRunning
    }
}
