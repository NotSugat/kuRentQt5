import QtQuick 2.5
import QtQuick.Controls 2.5

Item {
    anchors.fill: parent

    StackView {
        id: renterStackView
        anchors.fill: parent
        initialItem: "HomePage.qml"
    }
}
