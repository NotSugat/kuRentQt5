import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ColumnLayout {
    id: textlayout

    width: parent.width
    property string title: "Pick up Point"
    property string placeHolderText: "Pick up Point"
    property color titleColor: "white"
    property color bgColor: "black"
    property alias text: comboBox.currentText

    Text {
        id: text1
        text: qsTr(textlayout.title)
        font.pixelSize: 16
        color: textlayout.titleColor
    }
    ComboBox {
        id: comboBox
        rightPadding: 0
        bottomPadding: 0
        leftPadding: 10
        topPadding: 0

        flat: true
        Layout.preferredHeight: 30
        Layout.preferredWidth: parent.width
        model: ["Geared", "Non-Geared"]

        background: Rectangle {
            color: textlayout.bgColor
            border.width: parent && parent.activeFocus ? 2 : 1
            border.color: parent && parent.activeFocus ? "green" : "red"
        }
        padding: 5
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

