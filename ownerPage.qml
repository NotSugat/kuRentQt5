import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import "components"

Window {
    width: 1920
    height: 1080
    visible: true
    title: qsTr("Owner Window")

    Loader {
        id: ownerPageLoader
        anchors {
            left: parent.left
            right: parent.right
            top: parent.bottom
            bottom: parent.bottom
        }

        source: "pages/renter/StackViewPage.qml"
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.25}
}
##^##*/

