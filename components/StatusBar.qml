import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0

Rectangle {
    id: statusBar
    width: parent.width
    height: parent.width / 30
    anchors {
        top: parent.top
        topMargin: 10
    }

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
    }

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

        Button {
            id: homeButton
            width: parent.width / 3

            contentItem: Text {
                text: "Home"

                opacity: enabled ? 1.0 : 0.3
                color: homeButton.down ? "#21be2b" : "#000000"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

                font.bold: true
            }
            background: Rectangle {
                color: "transparent"
            }

            onClicked: mainLoader.source = "../pages/renter/StackViewPage.qml"
        }
        Button {
            id: aboutButton
            width: parent.width / 3

            contentItem: Text {
                text: "About Us"

                opacity: enabled ? 1.0 : 0.3
                color: aboutButton.down ? "#21be2b" : "#000000"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

                font.bold: true
            }
            background: Rectangle {
                color: "transparent"
            }
        }
        Button {
            id: favbutton
            width: parent.width / 3
            contentItem: Text {
                text: "contact"

                opacity: enabled ? 1.0 : 0.3
                color: favbutton.down ? "#21be2b" : "#000000"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                font.bold: true
            }
            background: Rectangle {
                color: "transparent"
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
