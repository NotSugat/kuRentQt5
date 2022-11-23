import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ColumnLayout {
    id: menuBarLayout
    spacing: 0
    width: parent.width

    property color titleColor: "white"
    property color bgColor: "#ffffff"
    property alias text: menuBar.currentText

    Text {
        id: text1
        text: qsTr("Bike Condition")
        padding: 12
        leftPadding: 0
        font.pixelSize: 16
        color: menuBarLayout.titleColor
    }
    ComboBox {
        id: menuBar
        Layout.preferredWidth: parent.width
        model: ["Perfect", "Good", "Fine", "Less maintained"]

        background: Rectangle {
            color: menuBarLayout.bgColor

            radius: 4
        }
        padding: 5
    }
}
