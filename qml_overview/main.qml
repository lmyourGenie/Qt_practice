/* practice 1 */
//import QtQuick 2.15
//import QtQuick.Window 2.15

//Window {
//    width: 640
//    height: 480
//    visible: true
//    title: qsTr("Hello World")
//    property bool test: false
//    Rectangle {
//        id: rotatingBox
//        color: "red"
//        x: 100
//        y: 100
//        width: 100
//        height: 100
//        RotationAnimator {
//            target: rotatingBox;
//            from: 0;
//            to: 360;
//            duration: 1000
//            running: test
//            loops: Animation.Infinite
//        }
//        MouseArea {
//            anchors.fill: parent
//            onClicked: {
//                test = !test
//            }
//        }
//    }


//    Rectangle {
//        id: wheel
//        anchors.centerIn: parent
//        width: 100
//        height: 100
//        color: "green"

//        MouseArea {
//            anchors.fill: parent
//            onClicked: wheel.rotation += 45
//        }

//    }
//}

/* practice 2 */
//import QtQuick 2.12
//import QtQuick.Window 2.12

//Window {
//    visible: true
////    color: "red"
//    //color: "#0000ff"
//    //opacity: 0.7
//    width: 640
//    height: 480
//    title: qsTr("Hello World")

//    Rectangle {
//        width: 100
//        height: 100
//        border.color: "purple"
//        border.width: 10

//    }
//}

/* practice 3 */
//import QtQuick 2.0

//Grid {
//    width: 100; height: 100
//    columns: 2

//    Rectangle {
//        id: topLeft
//        width: 50; height: 50
//        color: focus ? "red" : "lightgray"
//        focus: true

//        KeyNavigation.right: topRight
//        KeyNavigation.down: bottomLeft
//    }

//    Rectangle {
//        id: topRight
//        width: 50; height: 50
//        color: focus ? "red" : "lightgray"

//        KeyNavigation.left: topLeft
//        KeyNavigation.down: bottomRight
//    }

//    Rectangle {
//        id: bottomLeft
//        width: 50; height: 50
//        color: focus ? "red" : "lightgray"

//        KeyNavigation.right: bottomRight
//        KeyNavigation.up: topLeft
//    }

//    Rectangle {
//        id: bottomRight
//        width: 50; height: 50
//        color: focus ? "red" : "lightgray"

//        KeyNavigation.left: bottomLeft
//        KeyNavigation.up: topRight
//    }
//}

/* practice 4 */
//Window {
//    visible: true
//    color: "cyan"
//    //color: "#0000ff"
//    opacity: 0.7
//    width: 640
//    height: 480
//    title: qsTr("Hello World")

//    Text {
//        text: "Qt quick"
//        color: "#303030"
//        font.family: "Ubuntu"
////        font.pixelSize: 28
//    }
//}

//Window {
//    visible: true
//    width: 300
//    height: 300

//    Rectangle {
//        id: rect1
//        x: 12;
//        y: 12
//        width: 76;
//        height: 96
//        color: "lightsteelblue"
//        MouseArea {
//            id: area
//            width: parent.width
//            height: parent.height
//            onClicked: rect2.visible = !rect2.visible
//        }
//    }

//    Rectangle {
//        id: rect2
//        x: 112;
//        y: 12
//        width: 76;
//        height: 96
//        border.color: "lightsteelblue"
//        border.width: 4
//        radius: 8
//    }
//}

/* practice 5 */
//Window {
//    visible: true
//    width: 600
//    height: 300

//    Rectangle {
//        x: 10
//        width: 50
//        height: 50
//        color: "lightsteelblue"
//    }
//    Rectangle {
//        x: 10+50+10
//        width: 50
//        height: 50
//        color: "lightsteelblue"
//    }
//    Rectangle {
//        x: 10+50+10+50+10
//        width: 50;
//        height: 50;
//        color: "lightsteelblue"
//    }
//    Rectangle {
//        x: 10+50+10+50+10+50+10
//        width: 50;
//        height: 50;
//        color: "lightsteelblue"
//        border.color: Qt.lighter(color)
//    }
//}

/* practice 6 */
//import QtQuick 2.12
//import QtQuick.Window 2.12
//import QtQuick.Controls 2.13

//ApplicationWindow {
//    visible: true

//    menuBar: MenuBar {
//        Menu {
//            title: qsTr("&File")
//            MenuItem {
//                text: qsTr("&Open...")
//                icon.name: "document-open"
//                onTriggered: fileOpenDialog.open()
//            }
//        }

//        Menu {
//            title: qsTr("&Help")
//            MenuItem {
//                text: qsTr("&About...")
//                onTriggered: aboutDialog.open()
//            }
//        }
//        /*
//        Menu {
//            title: (_fileName.length===0?qsTr("Document"):_fileName) + (_isDirty?"*":"")
//            MenuItem {
//                text: qsTr("&About...")
//                onTriggered: aboutDialog.open()
//            }
//        }
//        */
//    }

//}

/* practice 7 */
//import QtQuick 2.5
//import QtQuick.Controls 2.13

//ApplicationWindow {
//    visible: true
//    Rectangle {
//        id: root
//        width: 252
//        height: 252
//        property variant colorArray: ["#00bde3", "#67c111", "#ea7025"]


//        Grid{
//            anchors.fill: parent
//            anchors.margins: 8
//            spacing: 4
//            Repeater {
//                model: 16
//                Rectangle {
//                    width: 56; height: 56
//                    property int colorIndex: Math.floor(Math.random()*3)
//                    color: root.colorArray[colorIndex]
//                    border.color: Qt.lighter(color)
//                    Text {
//                        anchors.centerIn: parent
//                        color: "#f0f0f0"
//                        text: "Cell " + index
//                    }
//                }
//            }
//        }
//    }
//}

/* practice 8 */
import QtQuick 2.5
import QtQuick.Controls 2.13

ApplicationWindow {
    visible: true
    width: 250
    height: 200

    Button { // our Button component
        x: 30
        y: 10
        text: "Click me"
        onClicked: {
            status.text = "Button clicked!"
        }
    }
/*
    Button { // test
        x: 30
        y: 50
        background: Rectangle {
            color: (status.text == "Button clicked!") ? "green" : "red"
        }
        // background: Rectangle {
        //     color: "yellow"
        // }
    }
*/

//    Button { // our Button component
//        x: 30
//        y: 10
//        text: "Click me"
//        onClicked: {
//            status.text = "Button clicked!"
//        }
//    }
//    Button {
//        x: 30
//        y: 50
//        background: Rectangle {
//              color: "yellow"
//        }
//    }

    MyCustom {
        x: 30
        y: 50
        color: "skyblue"
    }


    Text { // text changes when button was clicked
        id: status
        x: 30
        y: 100
        width: 200
        height: 30
        text: "waiting ..."
        horizontalAlignment: Text.AlignHCenter
    }
}



//ApplicationWindow {

//    visible: true
//    width: 250
//    height: 200

//    id: window

//    Drawer {
//        id: drawer

//        width: Math.min(window.width, window.height) / 3 * 2
//        height: window.height

//        ListView {
//            focus: true
//            currentIndex: -1
//            anchors.fill: parent

//            delegate: ItemDelegate {
//                width: parent.width
//                text: model.text
//                highlighted: ListView.isCurrentItem
//                onClicked: {
//                    drawer.close()
//                    model.triggered()
//                }
//            }

//            model: ListModel {
//                ListElement {
//                    text: qsTr("Open...")
//                    triggered: function(){ fileOpenDialog.open(); }
//                }
//                ListElement {
//                    text: qsTr("About...")
//                    triggered: function(){ aboutDialog.open(); }
//                }
//            }

//            ScrollIndicator.vertical: ScrollIndicator { }
//        }
//    }

//    // ...

//}
