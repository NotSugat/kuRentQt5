import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../components"
import "components"

Item {

    //-------------------------- sidebar-----------------------------//
    OwnerSidebar {
        id: sidebar
        z: 100
    }
    Text {
        id: username
        anchors {
            top: parent.top
            topMargin: 12
            right: parent.right
            rightMargin: 12
        }

        color: "white"
        font.pixelSize: 16
        text: "Hello, " + database.FirstName
        z: 200
    }

    Loader {
        id: conterLoader
        anchors.fill: parent
        source: "HomeStackView.qml"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:480;width:640}
}
##^##*/

