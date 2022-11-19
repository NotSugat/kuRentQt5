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

    OwnerSidebar {
        id: sidebar
        accountActive: true
        z: 100
    }

    Rectangle {
        id: container
        anchors {
            left: sidebar.right
            right: parent.right
            top: parent.top
            bottom: parent.bottom
        }

        Rectangle {
            id: myInfo
            height: parent.height / 2
            width: parent.width / 2

            color: "cyan"
            anchors {
                centerIn: parent
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

