import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import "../../../components"

Rectangle {
    id: card

    property string source: "../../../images/motorcycle.png"
    property string page: "../../../images/motorcycle.png"

    property color beforeHovered: "#557"
    property color afterHovered: "#668"
    property string text: "Bicycle"
    property int customHeight: 200
    property int customWidth: 200
    height: card.customHeight
    width: card.customWidth
    radius: 8
    PropertyAnimation {
        id: animateColor
        target: card
        properties: "color"
        to: card.afterHovered
        duration: 100
        easing.type: Easing.InOutQuint
    }
    Image {
        id: image
        height: 120
        source: card.source
        width: 120
        anchors {
            top: card.top
            horizontalCenter: card.horizontalCenter
            topMargin: 12
        }
    }
    Text {
        anchors {
            top: image.bottom
            topMargin: 8
            horizontalCenter: card.horizontalCenter
        }
        text: card.text
        color: "#111"
        font.pixelSize: 24
        font.styleName: "Medium"
    }

    MouseArea {
        id: mouse
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: homeStackView.push(card.page)
    }

    color: mouse.containsMouse ? card.afterHovered : card.beforeHovered
}
