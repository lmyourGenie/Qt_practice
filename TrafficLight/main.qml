import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: myWindow
    width: 160
    height: 300
    visible: true
    title: qsTr("Traffic Light")

//    TrafficLight {}
    TrafficTransition {}
}
