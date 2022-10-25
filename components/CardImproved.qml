import QtQuick 2.5

Item {
    id: card
    width: 350
    height: 200

    property string title: ""
    property string imgSrc: ""
    property string noOfItem: ""
    property color rectangleColor: "white"
    property color textColor: "white"
    property color hoverColor: "#ff9d00"
    property color circleColor: "#fcfcfc"
    property string source: ""

    Rectangle {
        id: rectangle
        x: 121
        y: 3
        width: 94
        height: 88
        color: card.circleColor
        radius: 44
        border.color: "#aaa2a2"
        border.width: 4
        z: 10

        Image {
            id: image
            x: 17
            y: 15
            width: 61
            height: 58
            source: "../images/groupUser.png"

            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle {
        id: rectangle1
        x: 1
        y: 45
        width: 349
        height: 153
        color: card.rectangleColor
        radius: 10

        Text {
            id: text1
            x: 97
            y: 61
            text: qsTr(card.title)
            font.pixelSize: 25
            color: card.textColor
        }

        Text {
            id: text2
            x: 158
            y: 92
            width: 19
            height: 31
            text: qsTr(card.noOfItem)
            font.pixelSize: 25
            font.weight: Font.Bold
            color: card.textColor
        }

        Text {
            id: text3
            x: 128
            y: 135
            text: qsTr("View History >")
            font.pixelSize: 12
            //            HoverHandler {
            //                id: text3Hover
            //                acceptedDevices: PointerDevice.Mouse
            //                cursorShape: Qt.PointingHandCursor
            //            }
            MouseArea {
                id: text3Hover
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onClicked: console.log("clicked")
            }

            color: text3Hover.containsMouse ? card.hoverColor : card.textColor
        }
    }
}

/*##^##
Designer {
    D{i:0;height:0;width:0}
}
##^##*/

