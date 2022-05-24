import QtQuick 2.5

Item {
    Rectangle {
        id: root
        width: 600
        height: 400

        property int duration: 3000

        Image {
            id: ghost
            x: 20; y: root.height-height
            source: "qrc:/ghost.png"
            MouseArea {
                anchors.fill: parent
                onClicked: anim.restart()
            }
        }

        ParallelAnimation {
            id: anim
            NumberAnimation {
                target: ghost
                properties: "y"
                to: 20
                duration: root.duration
            }
            NumberAnimation {
                target: ghost
                properties: "x"
                to: 200
                duration: root.duration
            }
        }
    }
}

