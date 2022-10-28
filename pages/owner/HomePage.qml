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

    Loader {
        id: conterLoader
        anchors.fill: parent
        source: "HomeStackView.qml"
    }
}
