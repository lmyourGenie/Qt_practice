/* practice 8 */
//import QtQuick 2.5
//import QtQuick.Controls 2.13

//ApplicationWindow {
//    visible: true
//    width: 250
//    height: 200

//    Button { // our Button component
//        x: 30
//        y: 10
//        text: "Click me"
//        onClicked: {
//            status.text = "Button clicked!"
//        }
//    }

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

//    MyCustom {
//        x: 30
//        y: 50
//        color: "skyblue"
//    }


//    Text { // text changes when button was clicked
//        id: status
//        x: 30
//        y: 100
//        width: 200
//        height: 30
//        text: "waiting ..."
//        horizontalAlignment: Text.AlignHCenter
//    }
//}

import QtQuick 2.5
import QtQuick.Controls 2.13

ApplicationWindow {
    visible: true
    width: 250
    height: 200
//    Text {
//        // (1) identifier
//        id: thisLabel

//        // (2) set x- and y-position
//        x: 24; y: 16

//        // (3) bind height to 2 * width
//        height: 2 * width

//        // (4) custom property
//        property int times: 24

//        // (5) property alias
//        property alias anotherTimes: thisLabel.times

//        // (6) set text appended by value
//        text: "Greetings " + times

//        // (7) font is a grouped property
//        // font.family: "roboto"
//        // font.pixelSize: 24

//        // (8) KeyNavigation is an attached property
////            KeyNavigation.tab: otherLabel

//        // (9) signal handler for property changes
//        onHeightChanged: console.log('height:', height)

//        // focus is need to receive key events
//        focus: true

//        // change color based on focus value
//        color: focus?"red":"blue"
//    }
//    Rectangle {
//        width: 100
//        height: 100
//        color: "yellow"
//        default property int num
//        Component.onCompleted: {
//            console.log("num:", num)
//        }
//    }

//    Loader {
//        source: "qrc:/asw/MyCustom.qml"
//        default property stgring text: "asdasd"

//    }

//    MyLabel {
//        someText4: myText
//    }

//    Text {
//        id: myText
//        text: "world!"
//    }
//    MyLabel {
//        Text { text: "world!" }
//    }

//    Item {
//        readonly property int someNumber: 10

//        Component.onCompleted: someNumber = 20  // doesn't work, causes an error
//    }
//    Rectangle {
//        width: 100
//        height: 100
//        required color
//        color: "purple"
//    }

    Text {
        id: label

        x: 24; y: 24

        // custom counter property for space presses
        property int spacePresses: 0

        text: "Space pressed: " + spacePresses + " times"

        // (1) handler for text changes
        onTextChanged: console.log("text changed to:", text)

        // need focus to receive key events
        focus: true

        // (2) handler with some JS
        Keys.onSpacePressed: {
            increment("777")
        }

        // clear the text on escape
        Keys.onEscapePressed: {
            label.text = ''
        }

        // (3) a JS function
        function increment(a) {
            console.log("a:", a)
            spacePresses = spacePresses + 1
        }
    }
}
