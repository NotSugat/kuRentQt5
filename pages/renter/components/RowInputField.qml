import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

RowLayout {
    id: textlayout

    spacing: 20
    property string title: "Location"
    property string placeHolderText: "Drop off Point"
    property color titleColor: "black"
    property color bgColor: "white"

    Text {
        id: text1
        text: qsTr(textlayout.title)
        font.pixelSize: 20
        color: textlayout.titleColor
    }

    TextField {
        id: textField

        Layout.preferredHeight: 40
        Layout.preferredWidth: parent.width
        horizontalAlignment: Text.AlignLeft
        leftPadding: 12
        placeholderText: qsTr(textlayout.placeHolderText)

        background: Rectangle {
            id: borderBottom
            width: parent.width
            radius: 4

            color: textlayout.bgColor
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/

