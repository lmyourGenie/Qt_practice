import QtQuick 2.0

Item {
    width: 640
    height: 480

    Loader {
        id: dialLoader
        anchors.top: parent.top

//        active: false
        onLoaded: {
            binder.target = dialLoader.item;
        }
        onSourceChanged: {
            console.log("Source:", source)
        }

        states: [
            State {
                name: "text"
                PropertyChanges { target: dialLoader; source: "MyText.qml"; }
            },
            State {
                name: "rectangle"
                PropertyChanges { target: dialLoader; source: "MyRectangle.qml"; }
            }
        ]
    }

    Binding {
        id: binder

        property: "print_janguh"
        value: "pink"
    }

    Rectangle {
        width: 100
        height: 100
        y: 300
        color: "red"

        anchors.left: parent.left
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                dialLoader.state = "text"
            }
        }
    }

    Rectangle {
        x: 100
        y: 300
        width: 100
        height: 100
        color: "blue"

        anchors.right: parent.right
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                dialLoader.state = "rectangle"
            }
        }
    }

    Rectangle {
        x: 200
        y: 200
        width: 100
        height: 100
        color: "yellow"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Yellow Clicked")

                if (dialLoader.active === true) {
                    dialLoader.active = false
                    console.log("false")
                } else {
                    dialLoader.active = true
                    console.log("true")
                }
            }
        }
    }
}
