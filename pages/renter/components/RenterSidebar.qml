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

    property bool homeActive: true
    property bool rentActive: false
    property bool myBookingActive: false
    property bool bookNowActive: false
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
            text: qsTr("Dashboard")
            btnIconSource: "qrc:/images/dashboardWhite.png"
            isActiveMenu: homeActive
            onClicked: {
                btnHome.isActiveMenu = homeActive
                btnSettings.isActiveMenu = false
                renterStackView.push("qrc:/pages/renter/HomePage.qml")
            }
        }

        LeftMenuBtn {
            id: btnBooking
            width: leftMenu.width
            anchors {
                top: btnHome.bottom
            }

            text: qsTr("My Booking")
            btnIconSource: "qrc:/images/myBookingWhite.png"
            isActiveMenu: myBookingActive
            onClicked: {
                btnBooking.isActiveMenu = myBookingActive
                btnSettings.isActiveMenu = false
                renterStackView.push("qrc:/pages/renter/HomePage.qml")
            }
        }

        LeftMenuBtn {
            id: btnAccount
            width: leftMenu.width
            anchors {
                top: btnBooking.bottom
            }
            text: qsTr("Account")
            btnIconSource: "qrc:/images/userWhite.png"
            isActiveMenu: accountActive
            onClicked: {
                btnAccount.isActiveMenu = accountActive
                btnSettings.isActiveMenu = false
                renterStackView.push("qrc:/pages/renter/RenterAccount.qml")
            }
        }

        LeftMenuBtn {
            id: btnBookNow
            width: leftMenu.width
            anchors {
                top: btnAccount.bottom
                topMargin: 25
            }

            text: qsTr("Book Now")
            btnIconSource: "qrc:/images/bookingWhite.png"
            isActiveMenu: bookNowActive
            onClicked: {
                btnBookNow.isActiveMenu = bookNowActive
                btnSettings.isActiveMenu = false
                renterStackView.push(
                            "qrc:/pages/renter/bookNowPages/BookNowPage.qml")
            }
        }
        LeftMenuBtn {
            id: btnSettings
            width: leftMenu.width
            text: qsTr("Sign Out")
            btnIconSource: "qrc:/images/logout.png"
            isActiveMenu: false
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 25
            onClicked: {
                btnHome.isActiveMenu = false
                btnSettings.isActiveMenu = true
                mainStackView.pop("qrc:/main.qml")
            }
        }
    }
}
