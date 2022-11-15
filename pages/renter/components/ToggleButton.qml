import QtQuick 2.5
import QtQuick.Controls 2.5

Button {
    id: btnToggle
    // CUSTOM PROPERTIES
    property url btnIconSource: "qrc:/images/menu.png"
    property color btnColorDefault: "#1c1d20"
    property color btnColorMouseOver: "#23272E"
    property color btnColorClicked: "#00a1f1"

    // MOUSE OVER AND CLICK CHANGE COLOR
    property var dynamicColor: if (btnToggle.down) {
                                   btnToggle.down ? btnColorClicked : btnColorDefault
                               } else {
                                   btnToggle.hovered ? btnColorMouseOver : btnColorDefault
                               }

    implicitWidth: 70
    implicitHeight: 60

    background: Rectangle {
        id: bgBtn
        color: btnToggle.dynamicColor

        Image {
            id: iconBtn
            anchors.verticalCenter: parent.verticalCenter
            source: "../../../images/menu.png"
            anchors.horizontalCenter: parent.horizontalCenter
            height: 25
            width: 25
            fillMode: Image.PreserveAspectFit
            visible: true
        }
    }
}
