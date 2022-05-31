import QtQuick 2.15

Item {
    width: 480
    height: 480

    Loader {
        id: dialLoader
        anchors.top: parent.top
        active: true
        source: "MyAnimation.qml"

        onLoaded: {
            console.log("onLoaded")
        }
    }
}
