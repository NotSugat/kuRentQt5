import QtQuick 2.0

Rectangle {
    id: sidebar
    width: 200
    height: parent.height

    ColumnLayout {
        id: sidebarIcons
        width: sidebar.width

        anchors {
            top: parent.top
            topMargin: 150
        }

        spacing: 20

        ButtonWithImage {
            id: dashboardBtn
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20
            }
            Layout.preferredHeight: 30
            btnText: "Dashboard"
            imgSrc: "qrc:/images/dashboard.png"
            page: "qrc:/pages/renter/Dashboard.qml"
        }

        // Account button
        ButtonWithImage {
            id: account
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20
            }
            Layout.preferredHeight: 30
            btnText: "Account"
            imgSrc: "qrc:/images/user.png"
            page: "qrc:/pages/renter/Account.qml"
        }

        ButtonWithImage {
            id: bookingBtn
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20
            }
            Layout.preferredHeight: 30
            btnText: "My Booking"
            imgSrc: "qrc:/images/email.png"
            page: "qrc:/pages/renter/booking.qml"
        }

        // setting
        ButtonWithImage {
            id: settingBtn
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20
            }
            Layout.preferredHeight: 30
            btnText: "Setting"
            imgSrc: "qrc:/images/report.png"
            page: "qrc:/pages/renter/setting.qml"
        }

        CustomButton {
            id: button
            anchors {
                top: settingBtn.bottom
                horizontalCenter: parent.horizontalCenter
                topMargin: 20
            }

            Layout.preferredHeight: 30
            Layout.preferredWidth: 100
            title: "Book Now"
            onClicked: stackView.push("qrc:/pages/renter/BookNow.qml")
        }
    }
}
