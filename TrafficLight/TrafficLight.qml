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
    Component.onCompleted: { trafficAnimation.running= true }

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

    SequentialAnimation {
        id: trafficAnimation
        loops: Animation.Infinite

        PauseAnimation { duration: 4000 }
        PropertyAnimation { // Red -> Green
            target: root
            property: "state"
            to: "go"
        }
        PauseAnimation { duration: 3000 }
        PropertyAnimation {
            target: light2
            property: "opacity"
            from: 1
            to: 0.3
            duration: 1000
            loops: 4000/duration
        }
        PropertyAnimation { // Green -> Red
            target: root
            property: "state"
            to: "stop"
        }
    }
}
