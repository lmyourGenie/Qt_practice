import QtQuick 2.0

Rectangle {
    id: root
    property alias text: label.text
    signal clicked

    width: 200
    height: 30
    color: "red"

    Text {
        id: label
        anchors.centerIn: parent
        text: "Test MyCustom"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }
}
