import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ColumnLayout {
    id: textlayout
    spacing: 0
    width: parent.width
    property string title: "Pick up Point"
    property string placeHolderText: "Pick up Point"
    property color titleColor: "#bbb"
    property color bgColor: "#dddde4"
    property bool passwordMode: false

    property alias text: textField.text

    Text {
        id: text1
        text: qsTr(textlayout.title)
        padding: 12
        leftPadding: 0
        font.pixelSize: 16
        color: textlayout.titleColor
    }

    TextField {
        id: textField
        echoMode: textlayout.passwordMode ? "Password" : "Normal"
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
