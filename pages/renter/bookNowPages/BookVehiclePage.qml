import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../../components"
import "../components"

Rectangle {
    id: content
    color: "#282c34"
    anchors.left: parent.left
    anchors.right: sidebar.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.topMargin: 0

    Rectangle {
        id: container
        color: "transparent"
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
            text: qsTr("Rent Vehicle from KuRent")
            font.weight: Font.DemiBold
            font.pixelSize: 32
            anchors {
                top: parent.top
                topMargin: 10
                left: parent.left
                right: parent.right
            }
            horizontalAlignment: Text.AlignHCenter
            color: "white"
        }
        Text {
            id: choose
            text: qsTr("Choose your Vehicle type")
            font.weight: Font.Normal
            font.pixelSize: 16
            anchors {
                top: heading.bottom
                topMargin: 20
                left: parent.left
                right: parent.right
            }
            horizontalAlignment: Text.AlignHCenter
            color: "white"
        }
        RowLayout {
            id: cardContainer
            anchors {
                top: choose.bottom
                topMargin: 50
                horizontalCenter: container.horizontalCenter
            }
            spacing: parent.width * 0.08
            RenterCard {
                id: bike
                text: "Bike"
                page: "qrc:/pages/renter/bookNowPages/BikePage.qml"
            }
            RenterCard {
                id: bicycle
                text: "Bicycle"
                source: "qrc:/images/bicycle.png"
                page: "qrc:/pages/owner/CyclePage.qml"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.5;height:480;width:640}
}
##^##*/

