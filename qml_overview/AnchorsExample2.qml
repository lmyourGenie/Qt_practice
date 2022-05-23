import QtQuick 2.5
import QtQuick.Controls 2.13

ApplicationWindow {
    visible: true
    width: 500
    height: 500

    Text {
        width: 100
        height: 100
        text: "abcdef"
        anchors.left: rect.left
        anchors.baseline: rect.bottom
        anchors.baselineOffset: -10

    }
    Rectangle {
        id: rect
        width: 200
        height: 2
        x: 100
        y: 300
        color: "red"
        opacity: 0.3
    }

    Rectangle {
        width: 100
        height: 100
        color: "red"
        clip: true
        MouseArea {
            anchors.fill: parent
            onClicked: {
                blackRect.visible = !blackRect.visible
//                blackRect.opacity -= 0.1
            }
        }
        Rectangle {
            id: blackRect
            width: 100
            height: 100
            x: 30
            y: 30
            color: "black"
            visible: true
            radius: 40
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    blackRect.radius += 1
                    console.log("radius:", blackRect.radius)
                }
            }
        }
    }
}
