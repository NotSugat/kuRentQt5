import QtQuick 2.5
import QtQuick.Controls 2.5

Item {
    anchors.fill: parent

    StackView {
        id: mainStackView
        anchors.fill: parent
        initialItem: "qrc:/pages/login/Login.qml"
    }
}
