import QtQuick 2.0

Rectangle {
    id: light1
    x: 25; y: 15
    width: 100; height: width
    radius: width/2
    color: "black"
    border.color: Qt.lighter(color, 1.1)
}
