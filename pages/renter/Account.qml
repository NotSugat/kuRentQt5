import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../components"
import "components"

Item {
    id: dashboardPage


    //---sidebar section---------------------//
    RenterSidebar {
        id: sidebar

    }

    //--------------------------   COntent---------------------------------------------------//
    Rectangle {
        id: content
        property color bgColor: "#fcfcfc"

        anchors {
            top: parent.top
            left: sidebar.right
            right: parent.right
            bottom: parent.bottom
        }
        color: content.bgColor

        Rectangle {
            id: div
            width: 1000
            height: 300
            anchors {
                centerIn: parent
            }
            color: "transparent"

            Text {
                text: "Hello world"
                anchors.centerIn: parent
                font.pixelSize: 50
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

