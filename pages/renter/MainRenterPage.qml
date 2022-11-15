import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import "../../components"
import "components"
import QtQuick.Layouts 1.3

Item {
    id: renterPage
    anchors.fill: parent
    //-------------------------- sidebar-----------------------------//
    Loader {
        id: renterLoader
        anchors.fill: parent
        source: "RenterStackView.qml"
    }
}
