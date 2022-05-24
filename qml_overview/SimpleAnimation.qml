import QtQuick 2.5
import QtQuick.Controls 2.13

Item {
    id: root
    property int padding: 40
    property int duration: 4000
    property bool running: false

    Rectangle {
        id: ball
        x: root.padding
        y: root.padding
        width: 100
        height: 100
        radius: 10
        color: "skyblue"

        NumberAnimation on x {
            to: root.width + ball.width + root.padding
            duration: root.duration
            running: root.running
        }
        RotationAnimation on rotation {
            to: 1080
            duration: root.duration
            running: root.running
        }

        MouseArea {
            anchors.fill: parent
            onClicked: root.running = true
        }
    }
}
