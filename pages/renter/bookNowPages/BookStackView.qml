import QtQuick 2.5
import QtQuick.Controls 2.5

Item {
    anchors.fill: parent

    StackView {
        id: bookStackView
        anchors.fill: parent
        initialItem: "BookVehiclePage.qml"
    }
}
