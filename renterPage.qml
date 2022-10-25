import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "components"
import "pages/renter"

Window {
    id: mainWindow
    width: 1280
    height: 720
    visible: true
    title: qsTr("Owner Window")

    StatusBar {
        id: statusBar
    }

    Loader {
        id: renterPageLoader
        anchors {
            left: parent.left
            right: parent.right
            top: statusBar.bottom
            bottom: parent.bottom
        }

        source: "pages/renter/StackViewPage.qml"
    }
}
