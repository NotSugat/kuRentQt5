import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../components"
import "components"

Item {

    //-------------------------- sidebar-----------------------------//
    RenterSidebar {
        id: sidebar
        z: 100
        homeActive: true
    }
    Rectangle {
        id: profile
        anchors {
            top: parent.top
            topMargin: parent.height * 0.02
            right: parent.right
            rightMargin: parent.width * 0.01
        }

        height: parent.height * 0.07
        z: 100
        color: "red"
        Rectangle {
            id: centerDiv
            anchors {
                top: parent.top
                bottom: parent.bottom
                right: parent.right
            }

            Image {
                id: profileImg
                source: database.ProfileUrl
                height: parent.height
                width: parent.height
                fillMode: Image.PreserveAspectCrop
                anchors {
                    right: username.left
                    rightMargin: 12
                    leftMargin: parent.width * 0.4
                }
                MouseArea {
                    id: mouse
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: renterStackView.push(
                                   "qrc:/pages/renter/Account.qml")
                }
            }

            Text {
                id: username
                anchors {
                    right: parent.right
                    rightMargin: 12
                    verticalCenter: parent.verticalCenter
                }
                MouseArea {
                    id: mouse1
                    anchors.fill: parent
                    hoverEnabled: true
                    cursorShape: Qt.PointingHandCursor
                    onClicked: renterStackView.push(
                                   "qrc:/pages/renter/Account.qml")
                }

                color: "white"
                font.pixelSize: 16
                text: database.FirstName
            }
        }
    }

    Loader {
        id: conterLoader
        anchors.fill: parent
        source: "HomeStackView.qml"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:480;width:640}
}
##^##*/

