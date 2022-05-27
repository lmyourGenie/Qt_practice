import QtQuick 2.0

Item {
    width: 640
    height: 480

    Loader {
        id: dialLoad

        asynchronous: true
        onStatusChanged: {
            if (status === Loader.Null) {
                console.log("Loader.Null - 로더가 비활성화되었거나 QML 소스가 설정되지 않았습니다.")
            } else if(status === Loader.Ready) {
                console.log("Loader.Ready - QML 소스가 로드되었습니다.")
            } else if(status === Loader.Loading) {
                console.log("Loader.Loading - QML 소스가 현재 로드 중입니다.")
            } else if(status === Loader.Error) {
                console.log("Loader.Error - QML 소스를 로드하는 동안 오류가 발생했습니다.")
            }

        }
    }
    Rectangle {
        y: 300
        width: 100
        height: 100
        color: "red"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                dialLoad.source = "MyText.qml"
//                dialLoad.sourceComponent = undefined
            }
        }
    }
}
