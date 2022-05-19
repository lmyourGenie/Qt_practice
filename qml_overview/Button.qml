import QtQuick 2.5

Rectangle {
    id: root
    property alias text: label.text
    signal clicked

    onClicked: {
        root.width = root.width / 2
        console.log("@daum")
    }

    onWidthChanged: {
        console.log("@nate", width)     // blank O
        console.log("@nate" + width)    // blank X
    }
    width: 200
    height: 30
    color: "red"

    Text {
        id: label
        anchors.centerIn: parent
        text: "Reset"
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
            console.log("@naver")
        }
    }
}
