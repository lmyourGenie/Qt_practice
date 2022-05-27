import QtQuick 2.0

Item {
    width: 640
    height: 480

    Loader {
        id: dialLoader

        anchors.fill: parent
    }

    Rectangle {
        anchors.bottom: parent.bottom
        width: 100
        height: 100
        color: "yellow"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                dialLoader.source = "qrc:/MyText.qml"
            }
        }
    }
    Rectangle {
        x: 100
        anchors.bottom: parent.bottom
        width: 100
        height: 100
        color: "blue"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                dialLoader.source = "qrc:/MyRectangle.qml"
            }
        }
    }
}
