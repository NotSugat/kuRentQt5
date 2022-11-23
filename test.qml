import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3
import "components"

Window {
    id: mainWindow
    width: 1920
    height: 1080
    visible: true
    title: qsTr("KuRent Move Freely")

    Rectangle {
        id: win
        color: "#262a33"
        anchors.fill: parent

        //    QCalender {}
        property bool isVisible: false
        DatePicker {

            id: test
            x: 216
            y: 192
            visible: isVisible
            bgColor: "#2d0c5c"
        }

        Button {
            id: clickMe
            anchors.centerIn: parent
            contentItem: Text {
                id: texts
                text: "click me"
            }
            onClicked: mainWindow.isVisible = !isVisible
        }

        TextField {
            id: dateView
            anchors.right: parent.right
            text: isVisible ? test.text : ""
            placeholderText: "yyyy-mm-dd"
        }
    }

    Image {
        id: imageSource
        source: "https://www.logodesign.net/images/home-page-logo-03.png"
    }

    //    ToolBar {
    //        RowLayout {
    //            anchors.fill: parent
    //            ToolButton {
    //                text: qsTr("‹")
    //                onClicked: stack.pop()
    //            }
    //            Label {
    //                text: "Title"
    //                elide: Label.ElideRight
    //                horizontalAlignment: Qt.AlignHCenter
    //                verticalAlignment: Qt.AlignVCenter
    //                Layout.fillWidth: true
    //            }
    //            ToolButton {
    //                text: qsTr("⋮")
    //                onClicked: menu.open()
    //            }
    //        }
    //    }
}
