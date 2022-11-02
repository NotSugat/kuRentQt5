import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../components"
import "components"

Rectangle {
    id: content
    color: "#282c34"
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: statusBar.bottom
    anchors.bottom: parent.bottom
    anchors.topMargin: 0

    Text {
        text: "sexy pigs"
        color: "white"
    }
}
