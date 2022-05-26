import QtQuick 2.0

Rectangle {
    property alias text: label.text

    width: 100
    height: 100
    color: "skyblue"
    Text {
        id: label
        anchors.centerIn: parent
        text: ""
    }
}
