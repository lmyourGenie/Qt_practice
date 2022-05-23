import QtQuick 2.0

Rectangle {
    id: root
    width: 50
    height: 50
    color: "grey"
    border.color: "black"
    property string mytext

    signal setPosition
    MouseArea {
        anchors.fill: parent
        onClicked: {
            setPosition()
        }
    }

    Text{
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: mytext
        font.pixelSize: 10
    }

}
