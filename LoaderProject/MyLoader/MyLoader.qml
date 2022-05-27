import QtQuick 2.0

Item {
    width: 640
    height: 480

    Loader {
        id: dialLoader

        anchors.fill: parent
        source: "qrc:/MyText.qml"
        // source: "qrc:/MyRectangle.qml"
    }
}
