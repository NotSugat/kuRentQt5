import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.1

RowLayout {
    id: rowText
    property string leftText: "Email"
    property string rightText: "rightText"
    property color rightTextColor: "white"
    property color leftTextColor: "#d8d8d8"
    property int fontSize: 12
    property alias text: textRight.text

    Text {
        id: textLeft
        color: leftTextColor

        leftPadding: 24
        topPadding: 16
        text: qsTr(leftText + ": ")
        font.pixelSize: fontSize
    }
    Text {
        id: textRight
        leftPadding: 0
        topPadding: 16
        text: qsTr(rightText)
        font.pixelSize: fontSize
        color: rightTextColor
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

