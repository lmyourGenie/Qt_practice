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

    FontfamilyExample {
        id: testFont
        Column {
            Repeater {
                model: {
                    console.log("model value:", testFont.listSize)
                    testFont.templist.length
                    testFont.listSize
                }
                Text {
                    id: name
                    font.family: testFont.templist[index]
                    text: "abcdefg [" + testFont.templist[index] + "]"
                    Component.onCompleted: {
                        console.log("index : " , index)
                        console.log("text : " , text)
/*
    <<<<log>>>>
    qml: model value: undefined
    qml: Component.onComleted START
    qml: templist size:  3
    qml: list cleared!
    qml: model value: 38
    qml: templist size:  38
    qml: Component.onComleted END
*/
                    }
                }
            }
        }
    }


    Text {
        font.family: "Suruma"
        text: "abcdef. Suruma"
        color: "red"
    }
    Text {
        font.family: "Ubuntu"
        y: 30
        text: "abcdef. Ubuntu"
        color: "blue"
    }
    Text {
        font.family: "Serif"
        y: 60
        text: "abcdef. Serif"
        color: "green"
    }
}
