import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import "../../components"
import "components"
import QtQuick.Layouts 1.3

Item {
    id: mainWindow
    //    width: 1920
    //    height: 1080
    //    visible: true
    //    title: qsTr("KuRent Move Freely")
    anchors.fill: parent
    Loader {
        id: contentLoader
        anchors.fill: parent
        source: "OwnerStackView.qml"
    }
}
