//import org.example 1.0
import QtQuick 2.15
import QtQuick.Controls 1.5
import QtQuick.Layouts 1.2

Rectangle {

}

//ListView {
//    id: view
//    width: 200
//    height: 300
//    anchors.fill: parent
//    model: DataEntryModel{}
//    delegate: listDelegate /*{
//        text: model.display
//    }*/

//    Component {
//        id: listDelegate

//        MyRectangle {
//            width: 200
//            height: 40
//            //            text: model.display
//            text: 'hsv(' +
//                  Number(model.hue).toFixed(2) + ',' +
//                  Number(model.saturation).toFixed() + ',' +
//                  Number(model.brightness).toFixed() + ')'
//            color: model.name
//        }
//    }

//}

//ColumnLayout {
//    anchors.fill: parent
//    anchors.margins: 8
//    ScrollView {
//        Layout.fillHeight: true
//        Layout.fillWidth: true
//        ListView {
//            id: view
//            // set our dynamic model to the views model property
//            model: dynamic
//            delegate: listDelegate

//            Component {
//                id: listDelegate

//                MyRectangle {
//                    width: 200
//                    height: 40
//                    //                            width: ListView.view.width

//                    text: 'hsv(' +
//                          Number(model.hue).toFixed(2) + ',' +
//                          Number(model.saturation).toFixed() + ',' +
//                          Number(model.brightness).toFixed() + ')'
//                    color: model.name

//                    onClicked: {
//                        // make this delegate the current item
//                        view.currentIndex = index
//                        view.focus = true
//                    }
//                    onRemove: {
//                        // remove the current entry from the model
//                        dynamic.remove(index)
//                    }
//                }
//            }

//            highlight: ListHighlight { }
//            // some fun with transitions :-)
//            add: Transition {
//                // applied when entry is added
//                NumberAnimation {
//                    properties: "x"; from: -view.width;
//                    duration: 250; easing.type: Easing.InCirc
//                }
//                NumberAnimation { properties: "y"; from: view.height;
//                    duration: 250; easing.type: Easing.InCirc
//                }
//            }
//            remove: Transition {
//                // applied when entry is removed
//                NumberAnimation {
//                    properties: "x"; to: view.width;
//                    duration: 250; easing.type: Easing.InBounce
//                }
//            }
//            displaced: Transition {
//                // applied when entry is moved
//                // (e.g because another element was removed)
//                SequentialAnimation {
//                    // wait until remove has finished
//                    PauseAnimation { duration: 250 }
//                    NumberAnimation { properties: "y"; duration: 75
//                    }
//                }
//            }
//        }
//    }
//    TextEntry {
//        id: textEntry
//        onAppend: {
//            // called when the user presses return on the text field
//            // or clicks the add button
//            dynamic.append(color)
//        }

//        onUp: {
//            // called when the user presses up while the text field is focused
//            view.decrementCurrentIndex()
//        }
//        onDown: {
//            // same for down
//            view.incrementCurrentIndex()
//        }

//    }
//}
