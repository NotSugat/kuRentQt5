import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5

Rectangle {
    id: leftMenu
    width: 70
    color: "#1c1d20"
    anchors.left: parent.left
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    clip: true
    anchors.topMargin: 0
    anchors.bottomMargin: 0
    anchors.leftMargin: 0

    property bool homeActive: false
    property bool rentActive: false
    property bool accountActive: false

    PropertyAnimation {
        id: animationMenu
        target: leftMenu
        property: "width"
        to: if (leftMenu.width == 70)
                return 250
            else
                return 70
        duration: 500
        easing.type: Easing.InOutQuint
    }

    Column {
        id: columnMenus
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        clip: true
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 90
        anchors.topMargin: 0

        spacing: 0

        ToggleButton {
            id: menuButton
            btnIconSource: "../../../images/menu.png"

            onClicked: animationMenu.running = true
        }

        LeftMenuBtn {
            id: btnHome
            width: leftMenu.width
            anchors {
                top: menuButton.bottom
            }
            text: qsTr("Home")
            btnIconSource: "qrc:/images/svg_images/home_icon.svg"
            isActiveMenu: true
            onClicked: {
                btnHome.isActiveMenu = true
                btnSettings.isActiveMenu = false
                ownerStackView.push("qrc:/pages/owner/HomePage.qml")
            }
        }

        LeftMenuBtn {
            id: btnRent
            width: leftMenu.width
            anchors {
                top: btnHome.bottom
            }

            text: qsTr("Stage")
            btnIconSource: "qrc:/images/report.png"
            isActiveMenu: false
            onClicked: {
                btnRent.isActiveMenu = true
                btnSettings.isActiveMenu = false
                ownerStackView.push("qrc:/pages/owner/HomePage.qml")
            }
        }

        LeftMenuBtn {
            id: btnAccount
            width: leftMenu.width
            anchors {
                top: btnRent.bottom
            }
            text: qsTr("Account")
            btnIconSource: "qrc:/images/report.png"
            isActiveMenu: false
            onClicked: {
                btnAccount.isActiveMenu = true
                btnSettings.isActiveMenu = false
                ownerStackView.push("qrc:/pages/owner/HomePage.qml")
            }
        }
        LeftMenuBtn {
            id: btnSettings
            width: leftMenu.width
            text: qsTr("Sign Out")
            btnIconSource: "qrc:/images/svg_images/settings_icon.svg"
            isActiveMenu: false
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 25
            onClicked: {
                btnHome.isActiveMenu = false
                btnSettings.isActiveMenu = true
                ownerStackView.push("qrc:/pages/owner/HomePage.qml")
            }
        }
    }
}
