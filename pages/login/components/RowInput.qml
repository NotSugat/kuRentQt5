import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Window 2.3

RowLayout {
    id: fullNameLayout
    anchors {
        top: header.bottom
        left: parent.left
        right: parent.right
        leftMargin: parent.width * 0.05
        rightMargin: parent.width * 0.05
    }
    height: parent.height / 5
    spacing: 12

    InputText {
        id: firstName
        width: parent.width / 2
    }

    InputText {
        id: inputText1
        width: parent.width / 2
    }
}
