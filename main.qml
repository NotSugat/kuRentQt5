import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    id: mainWindow
    width: 1280
    height: 720
    visible: true
    title: qsTr("KuRent Move Freely")

    Loader {
        id: mainLoader
        anchors.fill: parent
        source: "mainStackView.qml"
    }
}
