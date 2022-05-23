import QtQuick 2.5
import QtQuick.Controls 2.13

ApplicationWindow {
    visible: true
    width: 600
    height: 600

    Rectangle {
        id: redButton
        width: 100
        height: 100
        x: 300
        y: 300
        color: "red"
    }
    Rectangle {
        id: blueButton
        width: 100
        height: 100
        x: 300
        color: "blue"

    }

    Item {
        MyButton {
            // 1. top
            id: topBtn
            x: 50
            mytext: "Top"
            onSetPosition: {
                setTop()
            }
        }
        MyButton {
            // 2. left
            y: 50
            mytext: "Left"
            onSetPosition: {
                setLeft()
            }
        }
        MyButton {
            // 3. bottom
            x: 50
            y: 50
            mytext: "Bottom"
            onSetPosition: {
                setBottom()
            }
        }
        MyButton {
            // 4. right
            x: 100
            y: 50
            mytext: "Right"
            onSetPosition: {
                setRight()
            }
        }
    }

    function clearAnchors() {
        blueButton.anchors.top = undefined
        blueButton.anchors.left = undefined
        blueButton.anchors.right = undefined
        blueButton.anchors.bottom = undefined
    }

    function setTop() {
        clearAnchors()
        blueButton.anchors.left = redButton.left
        blueButton.anchors.bottom = redButton.top
    }
    function setLeft() {
        clearAnchors()
        blueButton.anchors.top = redButton.top
        blueButton.anchors.right = redButton.left
    }
    function setRight() {
        clearAnchors()
        blueButton.anchors.top = redButton.top
        blueButton.anchors.left = redButton.right
    }
    function setBottom() {
        clearAnchors()
        blueButton.anchors.top = redButton.bottom
        blueButton.anchors.left = redButton.left
    }

}
