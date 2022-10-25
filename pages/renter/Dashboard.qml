import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../components"

Item {
    id: dashboardPage

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

    //   COntent
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

            CardImproved {
                id: cardImproved
                circleColor: "#3d517e"
                hoverColor: "#4dbca1"
                rectangleColor: "#34495e"
                title: "Total Booking"
                noOfItem: "20"
                anchors {
                    top: parent.top
                    left: parent.left
                    leftMargin: 100
                    topMargin: 50
                }
            }

            CardImproved {
                id: cardImproved1
                circleColor: "#446e48"
                hoverColor: "#34495e"
                rectangleColor: "#4dbca1"
                title: "Total Spend"
                noOfItem: "0"
                anchors {
                    top: parent.top
                    left: cardImproved.right
                    leftMargin: 100
                    topMargin: 50
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

