import QtQuick 2.5
import QtQuick.Controls 2.5

Item {
    anchors.fill: parent

    StackView {
        id: ownerStackView
        anchors.fill: parent
        initialItem: "HomePage.qml"
    }
}
