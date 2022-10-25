import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import "components"

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Owner Window")



    Rectangle {
        id: statusBar
        width:parent.width
        height: parent.width / 30
        color: "red"

        Image {
            id: logo
            source: "qrc:/images/logo.png"
            height: parent.height
            anchors {
                top: parent.top
                left: parent.left

            }
            fillMode: Image.PreserveAspectFit

            MouseArea {
                id: logoMouseArea
                anchors.fill: parent
                HoverHandler {
                       id: registerHover
                       acceptedDevices: PointerDevice.Mouse
                       cursorShape: Qt.PointingHandCursor
                }

            }



        }





        Text {
            id: home
            text: "hello"
            anchors {
                top:parent.top
                right: parent.right
            }
        }

    }


}
