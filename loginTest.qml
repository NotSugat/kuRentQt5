import QtQuick 2.5

import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import "components"


Window {
    width: 400
    height: 640
    visible: true
    title: qsTr("Login Page")

    Button {
        id: button

//        // Custom Properties
//        property color colorDefault: "#4891d9"
//        property color colorMouseOver: "#55AAFF"
//        property color colorPressed: "#3F7EBD"
        x: 163
        y: 209
        width: 119
        height: 73

        flat: true




        text: qsTr("Button")
        contentItem: Item{
            Text {
                id: name
                text: button.text
                font: button.font
                color: "#000000"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        background: Rectangle{
            color: mouseArea.pressed ? "red" : "blue"
        }

        MouseArea{
            id: mouseArea
            anchors.fill: parent
        }

//        background: Rectangle{
////            color: if(button.down){
////                                    button.down ? "#3F7EBD" : "#4891d9"
////                               }else{
////                                    button.hovered ? "#55AAFF" : "#4891d9"
////                               }

//            radius: 10
//        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}
}
##^##*/
