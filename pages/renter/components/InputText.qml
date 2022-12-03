import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ColumnLayout {
    id: textlayout
    spacing: 0
    width: parent.width
    property string title: "Pick up Point"
    property string placeHolderText: "Pick up Point"
    property color titleColor: "black"
    property color bgColor: "#E5E5E5"
    property bool canRead: false
    property int fontSize: 16

    property alias text: textField.text

    Text {
        id: text1
        text: qsTr(textlayout.title)
        padding: 12
        leftPadding: 0
        font.pixelSize: fontSize
        color: textlayout.titleColor
    }

    TextField {
        id: textField

        Layout.preferredHeight: 40
        Layout.preferredWidth: parent.width
        horizontalAlignment: Text.AlignLeft
        font.pixelSize: fontSize
        placeholderText: qsTr(textlayout.placeHolderText)
        leftPadding: 12
        readOnly: ReadOnly

        background: Rectangle {
            id: borderBottom
            width: parent.width
            radius: 4

            color: textlayout.bgColor
        }
    }
}
