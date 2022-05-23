import QtQuick 2.5
import QtQuick.Controls 2.13

ApplicationWindow {
    visible: true
    width: 500
    height: 500
    Component.onCompleted: {
        a()
    }

    function a() {
        for (var i = 0; i < 10000; ++i) {
            for (var j = 0; j < 1000; ++j) {

            }
        }
    }
    Flickable {
        interactive: true
        contentHeight: myImage.height*1.8
        contentWidth: myImage.width*1.8
        width: myImage.width
        height: myImage.height
        Image {
            id: myImage
            x: 12; y: 12
            asynchronous: true
            // source: "qrc:/4k.jpg"
            source: "qrc:/dog"
        }
    }
}
