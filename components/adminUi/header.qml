import QtQuick 2.15
import QtQuick.Controls 6.3
import QtQuick.Layouts 1.0

Rectangle {
    id: navbar
    height: parent.width / 25

    anchors{
        top: parent.top
        left: sidebar.right
        right: parent.right

    }

    Image {
        id: menu
        source: "qrc:/images/menu.png"
        fillMode: Image.PreserveAspectFit
        width: 20
        anchors{
            top: parent.top
            left: parent.left
            bottom: parent.bottom
            leftMargin: 20

        }
        horizontalAlignment: Image.AlignHCenter
        verticalAlignment: Image.AlignVCenter
    }

    TextField{
        id: dashboardText
        text: qsTr("Dashboard")

        anchors{
            top: parent.top
            centerIn: parent
        }
        background: Rectangle{
            border.width: 0

        }
        font.pointSize: 15
        font.bold: true

    }

}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/
