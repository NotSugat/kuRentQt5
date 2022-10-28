import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../components"
import "components"

Rectangle {
    id: content
    color: "#282c34"
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: statusBar.bottom
    anchors.bottom: parent.bottom
    anchors.topMargin: 0

    Rectangle {
        id: container
        color: "#fcfcfc"
        width: parent.width / 2
        height: parent.width / 5
        anchors {
            top: parent.top
            topMargin: parent.height * 0.1
            horizontalCenter: content.horizontalCenter
        }
        radius: 8
        Text {
            id: heading
            text: qsTr("Earn Money By Renting your Vehicles!")
            font.weight: Font.DemiBold
            font.pixelSize: 32
            anchors {
                top: parent.top
                topMargin: 10
                left: parent.left
                right: parent.right
            }
            horizontalAlignment: Text.AlignHCenter
            color: "#282c34"
        }
        Text {
            id: choose
            text: qsTr("Choose your Vehicle type")
            font.weight: Font.Normal
            font.pixelSize: 16
            anchors {
                top: heading.bottom
                topMargin: 10
                left: parent.left
                right: parent.right
            }
            horizontalAlignment: Text.AlignHCenter
            color: "#282c34"
        }
        RowLayout {
            id: cardContainer
            anchors {
                top: choose.bottom
                topMargin: 20
                horizontalCenter: container.horizontalCenter
            }
            spacing: parent.width * 0.08
            Card {
                id: bike
                text: "Bike"
                page: "qrc:/pages/owner/BikePage.qml"
            }
            Card {
                id: bicycle
                text: "Bicycle"
                source: "qrc:/images/bicycle.png"
                page: "qrc:/pages/owner/CyclePage.qml"
            }
        }
    }
}
