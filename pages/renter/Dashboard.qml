import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../components"
import "components"

Rectangle {
    id: dashboardPage
    color: "#282c34"
    anchors.left: sidebar.right
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    anchors.topMargin: 0

    //   COntent
    Rectangle {
        id: content
        property color bgColor: "#282c34"

        anchors.fill: parent
        color: content.bgColor

        Rectangle {
            id: div
            width: 1000
            height: 300
            anchors {
                centerIn: parent
            }
            color: "transparent"

            CardImproved {
                id: cardImproved
                circleColor: "#3d517e"
                hoverColor: "#4dbca1"
                rectangleColor: "#34495e"
                title: "Total Booking"
                noOfItem: "20"
                anchors {
                    top: parent.top
                    left: parent.left
                    leftMargin: 100
                    topMargin: 50
                }
            }

            CardImproved {
                id: cardImproved1
                circleColor: "#446e48"
                hoverColor: "#34495e"
                rectangleColor: "#4dbca1"
                title: "Total Spend"
                noOfItem: "0"
                anchors {
                    top: parent.top
                    left: cardImproved.right
                    leftMargin: 100
                    topMargin: 50
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:480;width:640}
}
##^##*/

