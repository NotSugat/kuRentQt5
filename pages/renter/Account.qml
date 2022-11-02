import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../components"

Item {
    id: dashboardPage

    // SIDEBAR SECTION-----------------------------------------------
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

            // dashboard Btn
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
            // booking btns
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

            // ----------------------BOOK NOW BTN ----------------------//
            CustomButton {
                id: button
                anchors {
                    top: setting.bottom
                    horizontalCenter: parent.horizontalCenter
                }

                Layout.preferredHeight: 30
                Layout.preferredWidth: 100
                title: "Book Now"
                onClicked: stackView.push("BookNow.qml")
            }
        }
    }

    //--------------------------   COntent---------------------------------------------------//
    Rectangle {
        id: content
        property color bgColor: "#fcfcfc"

        anchors {
            top: parent.top
            left: sidebar.right
            right: parent.right
            bottom: parent.bottom
        }
        color: content.bgColor

        Rectangle {
            id: div
            width: 1000
            height: 300
            anchors {
                centerIn: parent
            }
            color: "transparent"

            Text {
                text: "Hello world"
                anchors.centerIn: parent
                font.pixelSize: 50
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

