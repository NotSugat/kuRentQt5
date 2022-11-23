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
    property bool readonly: false
    property bool dropDownClick: false
    property bool textVisible: false

    property alias text: textField.text
    property string date: ""

    Text {
        id: text1
        text: qsTr(textlayout.title)
        padding: 12
        leftPadding: 0
        font.pixelSize: 16
        color: textlayout.titleColor
    }

    Rectangle {
        id: fieldContainer
        radius: 4
        anchors {
            top: text1.bottom
            left: parent.left
            right: parent.right
        }
        Layout.preferredHeight: 40
        color: textlayout.bgColor

        TextField {
            id: textField
            anchors {
                left: parent.left
            }
            text: qsTr(textlayout.date)

            height: parent.height
            width: parent.width * 0.9
            horizontalAlignment: Text.AlignLeft
            placeholderText: qsTr(textlayout.placeHolderText)
            leftPadding: 12
            readOnly: textlayout.readonly

            background: Rectangle {
                radius: 4
            }
        }
        Image {
            id: dropDownImg
            source: "../../../images/dropDown.png"
            anchors {
                top: textField.top
                left: textField.right
                right: parent.right
            }
            fillMode: Image.PreserveAspectFit

            height: 40
            width: parent.width * 0.1
            MouseArea {
                id: imgMouse
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: onClick()
            }
        }
    }
    function onClick() {
        dropDownClick = !dropDownClick
        textVisible = true
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}
}
##^##*/

