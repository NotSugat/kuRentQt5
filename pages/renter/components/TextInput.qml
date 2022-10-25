import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ColumnLayout {
    id: textlayout

    anchors {
        left: parent.left
        right: parent.right
        leftMargin: parent.width * 0.1
        rightMargin: parent.width * 0.1
    }

    spacing: 20
    property string title: "Pick up Point"
    property string placeHolderText: "Pick up Point"
    property color titleColor: "white"
    property color bgColor: "white"

    Text {
        id: text1
        text: qsTr(textlayout.title)
        font.pixelSize: 16
        color: textlayout.titleColor
    }

    TextField {
        id: textField

        Layout.preferredHeight: 40
        Layout.preferredWidth: parent.width
        horizontalAlignment: Text.AlignLeft
        placeholderText: qsTr(textlayout.placeHolderText)
        leftPadding: 12

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
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

