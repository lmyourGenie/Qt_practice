import QtQuick 2.5
import QtQuick.Controls 2.13

ApplicationWindow {
    visible: true
    width: 600
    height: 600

    // SimpleAnimation {}
    // ParallelAnimationPractice {}

    // 1. apple
    ClickableImage {
        id: apple
        x: 40
        y: 100
        source: "qrc:/apple.png"
        NumberAnimation on y {
            to: y + 400
            duration: 4000
        }
    }

    // 2. orange
    ClickableImage {
        id: orange
        x: 140
        y: 100
        source: "qrc:/orange.png"
        Behavior on y {
            NumberAnimation { duration: 4000 }
        }

        onClicked: y = 20
    }

    // 3. lemon
    ClickableImage {
        id: lemon
        x: 240
        y: 20
        source: "qrc:/lemon.png"
        onClicked: anim.restart()

        ParallelAnimation {
            id: anim
            NumberAnimation {
                target: lemon
                properties: "y"
                to: 300
                duration: 3000
            }
            NumberAnimation {
                target: lemon
                properties: "x"
                to: 500
                duration: 3000
            }
        }
    }
}
