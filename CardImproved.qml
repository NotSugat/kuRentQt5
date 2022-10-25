import QtQuick 2.5

Item {
    id: card
    width: 350
    height: 200

    Rectangle {
        id: rectangle
        x: 121
        y: 3
        width: 94
        height: 88
        color: "#000000"
        radius: 44
        border.color: "#aaa2a2"
        border.width: 4
        z: 10
    }

    Rectangle {
        id: rectangle1
        x: 1
        y: 45
        width: 349
        height: 153
        color: "#ffffff"

        Text {
            id: text1
            x: 97
            y: 61
            text: qsTr("Total Booking")
            font.pixelSize: 25
        }

        Text {
            id: text2
            x: 158
            y: 92
            width: 19
            height: 31
            text: qsTr("0")
            font.pixelSize: 25
            font.weight: Font.Bold
        }

        Text {
            id: text3
            x: 128
            y: 135
            text: qsTr("View History >")
            font.pixelSize: 12
        }
    }
}
