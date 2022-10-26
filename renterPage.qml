import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "components"
import "pages/renter"

Item {
    id: renterPage

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
