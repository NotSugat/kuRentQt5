import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../../components"
import "../components"

Item {

    //-------------------------- sidebar-----------------------------//
    RenterSidebar {
        id: sidebar
        bookNowActive: true
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
        id: bookLoader
        anchors {
            left: sidebar.right
            right: parent.right
            top: parent.top
            bottom: parent.bottom
        }

        source: "BookStackView.qml"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:480;width:640}
}
##^##*/

