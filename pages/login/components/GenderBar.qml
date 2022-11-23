import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ColumnLayout {
    id: menuBarLayout
    spacing: 0
    width: parent.width

    property color titleColor: "black"
    property color bgColor: "#E5E5E5"
    property alias text: menuBar.currentText

    Text {
        id: text1
        text: qsTr("Gender")
        padding: 12
        leftPadding: 0
        font.pixelSize: 16
        color: textlayout.titleColor
    }
    ComboBox {
        id: menuBar
        Layout.preferredWidth: parent.width
        model: ["Male", "Female", "Others"]

        background: Rectangle {
            color: menuBarLayout.bgColor

            radius: 4
        }
        padding: 8
    }
}
