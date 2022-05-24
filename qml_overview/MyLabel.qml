import QtQuick 2.0

Text {
//    default property var someText
    property var someText
    property int someText1
    property real someText2
    property string someText3
    property Text someText4
//    property Component someText4

    text: "Hello, " + someText4.text

    Component.onCompleted: {
        a()
    }

    function a() {
        console.log("asdasd")
        let mInt = 1
        let mBool = false
        let mString = "true"
        let mReal = 123.456

        console.log("mInt: ", mInt)
        console.log("mBool: ", mBool)
        console.log("mString: ", mString)
        console.log("mReal: ", mReal)
    }
}
