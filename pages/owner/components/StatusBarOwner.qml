import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import "../../../components"

import QtQuick.Layouts 1.3

Rectangle {
    id: statusBar
    width: parent.width
    height: parent.width / 28
    anchors {
        top: parent.top
    }
    z: 10

    color: "#fcfcfc"
    Image {
        id: logo
        source: "qrc:/images/logo.png"
        height: parent.height
        anchors {
            top: parent.top
            left: parent.left
            leftMargin: 40
        }
        fillMode: Image.PreserveAspectFit

        MouseArea {
            id: logoMouseArea
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
            //            HoverHandler {
            //                id: registerHover
            //                acceptedDevices: PointerDevice.Mouse
            //                cursorShape: Qt.PointingHandCursor
            //            }
        }
    }

    Text {
        id: logoText
        anchors {
            left: logo.right
            top: statusBar.top
        }
        text: "KuRent"
        height: parent.height
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.bold: true
        font.pixelSize: 25

        MouseArea {
            id: logoName
            anchors.fill: parent
            cursorShape: Qt.PointingHandCursor
        }
    }

    //--------------------mid button part------------------------//
    RowLayout {
        id: buttonRow
        height: statusBar.height
        width: statusBar.width / 3
        spacing: 0
        anchors {
            left: statusBar.left
            top: statusBar.top
            centerIn: parent
        }

        //---------------Home Butoon-----------------//
        Button {
            id: homeButton
            width: parent.width / 3

            contentItem: Text {
                text: "HOME"

                opacity: enabled ? 1.0 : 0.3
                color: homeButton.down ? "#21be2b" : "#000000"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

                font.bold: true
            }
            background: Rectangle {
                color: homeButtonArea.containsMouse ? "#e8e4e3" : "white"
                radius: 4
            }
            MouseArea {
                id: homeButtonArea
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                hoverEnabled: true
            }

            onClicked: mainLoader.source = "../pages/renter/StackViewPage.qml"
        }
        Button {
            id: aboutButton
            width: parent.width / 3

            contentItem: Text {
                text: "ABOUT US"

                opacity: enabled ? 1.0 : 0.3
                color: aboutButton.down ? "#21be2b" : "#000000"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

                font.bold: true
            }
            background: Rectangle {
                color: aboutButtonArea.containsMouse ? "#e8e4e3" : "white"
                radius: 4
            }
            MouseArea {
                id: aboutButtonArea
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                hoverEnabled: true
            }
        }
        Button {
            id: favbutton
            width: parent.width / 3
            contentItem: Text {
                text: "CONTACT"

                opacity: enabled ? 1.0 : 0.3
                color: favbutton.down ? "#21be2b" : "#000000"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                font.bold: true
            }
            background: Rectangle {
                color: favButtonArea.containsMouse ? "#e8e4e3" : "white"
                radius: 4
            }
            MouseArea {
                id: favButtonArea
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                hoverEnabled: true
            }
        }
    }

    ProfileLogo {
        id: profile
        anchors {
            right: parent.right

            rightMargin: 100
            verticalCenter: statusBar.verticalCenter
        }
    }

    Text {
        id: profileName
        height: parent.height
        text: "User"
        anchors {
            left: profile.right
            leftMargin: 10
        }
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 20
    }
}
