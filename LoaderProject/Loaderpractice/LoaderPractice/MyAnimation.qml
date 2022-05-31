import QtQuick 2.15

Item {
    id: root
    property int duration: 4000
    property bool running: false
    signal startclicked()
    signal stopclicked()

    Rectangle {
        id: ball
        x: 150
        y: 150
        width: 100
        height: 100
        color: "pink"
        radius: 8
    }

    RotationAnimation {
        id: rotate
        target: ball
        from: 0
        to: 360
        loops: Animation.Infinite
        duration: root.duration
        running: root.running
    }

    Rectangle { // start
        y: 300
        width: 100
        height: 100
        color: "blue"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (running === false)
                {
                    running = true
                    root.startclicked()
                }
            }
        }
    }
    Rectangle { // stop
        x: 100
        y: 300
        width: 100
        height: 100
        color: "red"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if (running === true)
                {
                    running = false
                    root.stopclicked()
                }
            }
        }
    }


}
