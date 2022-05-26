import QtQuick 2.15
import QtQuick.Controls 2.13

Item {
    id: root
    TrafficCircleLight {
        id: light1
    }
    TrafficCircleLight {
        id: light2
        y: 135
    }

    state: "stop"
    states: [
        State {
            name: "stop"
                        PropertyChanges { target: light1; color: "red" }
                        PropertyChanges { target: light2; color: "black" }
        },
        State {
            name: "go"
                        PropertyChanges { target: light1; color: "black" }
                        PropertyChanges { target: light2; color: "green" }
        }
    ]

    transitions: [
        Transition {
            from: "stop"; to: "go"
            //            from: "*"; to: "*"
            ColorAnimation { target: light1; properties: "color"; duration: 2000 }
            ColorAnimation { target: light2; properties: "color"; duration: 2000 }
        },
        Transition {
            from: "go"; to: "stop"
            //            from: "*"; to: "*"
            ColorAnimation { target: light1; properties: "color"; duration: 4000 }
            ColorAnimation { target: light2; properties: "color"; duration: 4000 }
        }
    ]

    Rectangle {
        id: rect1
        width: 50
        height: 50
        y: 250
        color: "blue"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.state="go"
                console.log("rect1.clicked :", root.state)
            }
        }
    }

    Rectangle {
        id: rect2
        width: 50
        height: 50
        x: 110
        y: 250
        color: "orange"
        MouseArea {
            anchors.fill: parent
            onClicked: {
                root.state="stop"
                console.log("rect2.clicked :", root.state)
            }
        }
    }
}
