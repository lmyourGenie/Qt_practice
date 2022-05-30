import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.2

import org.example 1.0

Window {
    width: 480
    height: 480
    visible: true
    title: qsTr("dynamic model color ver.")

    DynamicEntryModel {
        id: dynamic
        onCountChanged: { // 해당 클래스의 시그널처리
            print('new count: ' + count);
            print('last entry: ' + get(count-1));
        }
    }
    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 8
        ScrollView {
            Layout.fillHeight: true
            Layout.fillWidth: true
            ListView {
                id: view

                model: dynamic
                delegate: ListDelegate {
                    width: ListView.view.width
                    // construct a string based on the models proeprties
                    text: 'hsv(' +
                          Number(model.hue).toFixed(2) + ',' +
                          Number(model.saturation).toFixed() + ',' +
                          Number(model.brightness).toFixed() + ')'
                    color: model.name

                    onClicked: {
                        view.currentIndex = index
                        view.focus = true // 사용자의 입력을 받겠다
                    }
                    onRemove: {
                        dynamic.remove(index)
                    }
                }

                highlight: ListHighlight { }

                add: Transition {
                    NumberAnimation {
                        properties: "x"; from: -view.width;
                        duration: 250; easing.type: Easing.InCirc
                    }
                    NumberAnimation { properties: "y"; from: view.height;
                        duration: 250; easing.type: Easing.InCirc
                    }
                }
                remove: Transition {
                    NumberAnimation {
                        properties: "x"; to: view.width;
                        duration: 250; easing.type: Easing.InBounce
                    }
                }
                displaced: Transition {
                    SequentialAnimation {
                        PauseAnimation { duration: 250 }
                        NumberAnimation { properties: "y"; duration: 75
                        }
                    }
                }
            }
        }
        TextEntry {
            id: textEntry
            onAppend: {
                dynamic.append(color)
            }
            onUp: {
                view.decrementCurrentIndex()
            }
            onDown: {
                view.incrementCurrentIndex()
            }

        }
    }

}
