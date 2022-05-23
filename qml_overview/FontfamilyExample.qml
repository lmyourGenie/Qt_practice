import QtQuick 2.0

Item {
    property var templist: [ "a", "b", "c" ]
    property var listSize
    Component.onCompleted: {
        console.log("Component.onComleted START")
        readList()
        setList()
        readList()
        console.log("Component.onComleted END")
    }
    function readList() {
        console.log("templist size: ", templist.length)

//        for (var i = 0; i < templist.length; ++i) {
//            console.log("index:", i, "value:", templist[i])
//        }
    }

    function setList() {
        if (templist.length !== 0) {
            templist = []
            console.log("list cleared!")
        } else {
            console.log("list is empty")
        }

        templist.push("alam")
        templist.push("Samyak Tamil")
        templist.push("Sans Serif")
        templist.push("Sarai")
        templist.push("Sawasdee")
        templist.push("Serif")
        templist.push("Standard Symbols L")
        templist.push("Standard Symbols PS [URW ]")
        templist.push("Standard Symbols PS [urw]")
        templist.push("Suruma")
        templist.push("Tibetan Machine Uni")
        templist.push("Tlwg Mono")
        templist.push("Tlwg Typewriter")
        templist.push("Tlwg Typist")
        templist.push("Tlwg Typo")
        templist.push("Ubuntu")
        templist.push("Ubuntu Condensed")
        templist.push("Ubuntu Light")
        templist.push("Ubuntu Mono")
        templist.push("Ubuntu Thin")
        templist.push("Umpush")
        templist.push("Uroob")
        templist.push("URW Bookman [urw]")
        templist.push("URW Bookman [UKWN]")
        templist.push("URW Bookman L")
        templist.push("URW Chancery L")
        templist.push("URW Gothic [UKWN]")
        templist.push("URW Gothic [urw]")
        templist.push("URW Gothic L")
        templist.push("URW Palladio L")
        templist.push("Vemana2000")
        templist.push("Waree")
        templist.push("Yrsa")
        templist.push("Yrsa Light")
        templist.push("Yrsa Medium")
        templist.push("Yrsa SemiBold")
        templist.push("Z003 [urw]")
        templist.push("Z003 [UKWN]")
        listSize = templist.length
    }
}
