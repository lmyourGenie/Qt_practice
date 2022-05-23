import QtQuick 2.0
import QtQuick.Controls 2.13

ApplicationWindow {
    visible: true
    width: 400
    height: 800
    title: "FontCheck"

    FontfamilyExample{
        id: testFont
        Column {
            Repeater {
                model: {
                    console.log("model value:", testFont.listSize)
                    testFont.listSize
                }
                Text {
                    id: name
                    width: 100
                    font.family: testFont.templist[index]
                    text: "abcdefg [" + testFont.templist[index] + "]"
//                    elide: Text.ElideRight
                    verticalAlignment: Text.AlignTop
                    }
                }
            }
        }
//    Text {
//        width: 100
//        height: 100
//        text: "abcdefg"
//        Component.onCompleted: {
//            console.log("text.length: ", text.length)
//            console.log("contentWidth:", contentWidth)
//            console.log("contentHeight:", contentHeight)
//        }

//        Rectangle {
//            width: 55
//            height: 17
//            color: "red"
//            opacity: 0.3
//        }
//    }
}
