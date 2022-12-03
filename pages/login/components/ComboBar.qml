import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ColumnLayout {
    id: menuBarLayout
    spacing: 0
    width: parent.width

    property color titleColor: "#bbb"
    property color bgColor: "#dddde4"
    property alias text: menuBar.currentText

    Text {
        id: text1
        text: qsTr("Role")
        padding: 12
        leftPadding: 0
        font.pixelSize: 16
        color: titleColor
    }
    ComboBox {
        id: menuBar
        Layout.preferredWidth: parent.width
        model: ["Renter", "Owner"]

        background: Rectangle {
            color: bgColor

            radius: 4
        }
        padding: 8
    }
}
