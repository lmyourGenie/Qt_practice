import QtQuick 2.15
import QtQuick.Window 2.15
import MyApi 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Q_PROPERTY Practice")

    property bool isRunning: true
    Component.onCompleted: {
        console.log("jjanggu: ", MyProperty.jjanggu)

        // set jjanggu 10
        MyProperty.jjanggu = 10
        console.log("jjanggu: ", MyProperty.jjanggu)

        // set jjanggu 20
        MyProperty.setJjanggu(20)
        console.log("jjanggu: ", MyProperty.getJjanggu())

        console.log("Before playing: ", MyProperty.jjanggu)
        MyProperty.playWithJjanggu()  // 19
        MyProperty.playWithJjanggu()  // 18
        console.log("After playing: ", MyProperty.jjanggu) // 18
    }

    Connections {
        target: MyProperty
        function onSignalJjangguChanged(aaaa/*, bbbb*/){
//            console.log("onSignalJjangguChanged", MyProperty.jjanggu) // 값으로 바로 받거나
            console.log("onSignalJjangguChanged", aaaa/*, bbbb*/) // 콜백으로 arg를 넣어서 받거나
        }
    }

//    Text {
//        id: myJ
//        text: qsTr("myJ:" + MyProperty.jjanggu) // (1) 바로 text에 넣어도 되고
//    }

    Text {
        id: myJ2
        text: MyProperty.jjanggu
//        text: getData(MyProperty.jjanggu) // (2) 함수의 인자를 통해서도 binding 가능
    }

    function getData(aaaa) {
        let ret = aaaa
        return ret + "*"
    }

    Item {
        y: 300
        x: 300
        Rectangle {
            width: 100
            height: 100
            color: "blue"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    MyProperty.jjanggu += 1
                }
            }
        }
        Rectangle {
            width: 100
            height: 100
            x: 100
            color: "red"
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    MyProperty.jjanggu -= 1
                }
            }
        }
    }
}
