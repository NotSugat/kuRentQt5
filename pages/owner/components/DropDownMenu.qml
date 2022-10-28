import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ColumnLayout {
    id: textlayout

    spacing: 10
    property string title: "Pick up Point"
    property string placeHolderText: "Pick up Point"
    property color titleColor: "white"
    property color bgColor: "black"

    Text {
        id: text1
        text: qsTr(textlayout.title)
        font.pixelSize: 15
        color: textlayout.titleColor
    }
    ComboBox {
        rightPadding: 0
        bottomPadding: 0
        leftPadding: 10
        topPadding: 0

        flat: true
        Layout.preferredHeight: 30
        Layout.preferredWidth: parent.width
        model: ["Bike", "Cycle", "Car"]

        background: Rectangle {
            color: textlayout.bgColor
            border.width: parent && parent.activeFocus ? 2 : 1
            border.color: parent && parent.activeFocus ? "green" : "red"
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

