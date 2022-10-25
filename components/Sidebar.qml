import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0

Rectangle {
    id: sidebar
    width: mainWindow.width / 20
    height: mainWindow.height
    anchors {
        left: mainWindow.left
    }

    Image {
        id: logo
        source: "../images/logo.png"
        fillMode: Image.PreserveAspectFit

        anchors {
            top: sidebar.top
            left: sidebar.left
            right: sidebar.right
            topMargin: 20
        }
    }

    ColumnLayout {
        id: sidebarIcons
        width: sidebar.width

        anchors {
            top: logo.bottom
            topMargin: 150
        }

        spacing: 20

        Rectangle {
            id: homeBg

            Layout.maximumHeight: 30
            Layout.preferredHeight: 20
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20
            }
            Image {
                id: home
                source: "../images/dashboard.png"
                height: parent.height
                width: parent.width
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter

                HoverHandler {
                    id: mouse
                    acceptedDevices: PointerDevice.Mouse
                    cursorShape: Qt.PointingHandCursor
                }
            }

            radius: 20
            color: mouse.hovered ? "#e8e4e3" : "white"
        }

        //email
        Rectangle {
            id: emailBg

            Layout.maximumHeight: 30
            Layout.preferredHeight: 20
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20
            }
            Image {
                id: email
                source: "../images/email.png"
                height: parent.height
                width: parent.width
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter

                HoverHandler {
                    id: mouseEmail
                    acceptedDevices: PointerDevice.Mouse
                    cursorShape: Qt.PointingHandCursor
                }
            }

            radius: 20
            color: mouseEmail.hovered ? "#e8e4e3" : "white"
        }

        // report
        Rectangle {
            id: reportBg

            Layout.maximumHeight: 30
            Layout.preferredHeight: 20
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20
            }
            Image {
                id: report
                source: "../images/report.png"
                height: parent.height
                width: parent.width
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter

                HoverHandler {
                    id: mouseReport
                    acceptedDevices: PointerDevice.Mouse
                    cursorShape: Qt.PointingHandCursor
                }
            }

            radius: 20
            color: mouseReport.hovered ? "#e8e4e3" : "white"
        }

        //user
        Rectangle {
            id: userBg

            Layout.maximumHeight: 30
            Layout.preferredHeight: 20
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20
            }
            Image {
                id: user
                source: "../images/user.png"
                height: parent.height
                width: parent.width
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter

                HoverHandler {
                    id: mouseUser
                    acceptedDevices: PointerDevice.Mouse
                    cursorShape: Qt.PointingHandCursor
                }
            }

            radius: 20
            color: mouseUser.hovered ? "#e8e4e3" : "white"
        }

        //contact
        Rectangle {
            id: telephoneBg

            Layout.maximumHeight: 30
            Layout.preferredHeight: 20
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20
            }
            Image {
                id: telephone
                source: "../images/telephone.png"
                height: parent.height
                width: parent.width
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter

                HoverHandler {
                    id: mouseTelephone
                    acceptedDevices: PointerDevice.Mouse
                    cursorShape: Qt.PointingHandCursor
                }
            }

            radius: 20
            color: mouseTelephone.hovered ? "#e8e4e3" : "white"
        }

        //piechart
        Rectangle {
            id: chartBg

            Layout.maximumHeight: 30
            Layout.preferredHeight: 20
            anchors {

                left: parent.left
                right: parent.right
                leftMargin: 20
                rightMargin: 20
            }
            Image {
                id: chart
                source: "../images/pie-chart.png"
                height: parent.height
                width: parent.width
                fillMode: Image.PreserveAspectFit
                horizontalAlignment: Image.AlignHCenter
                verticalAlignment: Image.AlignVCenter

                HoverHandler {
                    id: mouseChart
                    acceptedDevices: PointerDevice.Mouse
                    cursorShape: Qt.PointingHandCursor
                }
            }

            radius: 20
            color: mouseChart.hovered ? "#e8e4e3" : "white"
        }
    }

    //singout btn at the bottom of the sidebar but i don't like this

    //        Button{
    //            id: signOutBtn
    //            anchors.left: parent.left
    //            anchors.right:parent.right
    //            anchors.top: sidebarIcons.bottom
    //            anchors.topMargin: 200
    //            height: 30
    //            flat: true

    //            background: Rectangle {
    //                id: signOutBtnBg
    //                width: parent.width
    //                height: parent.height
    //                color: signOutBtn.hovered ? "#e8e4e3" : "#59f52f"

    //                radius: 20

    //            }

    //            contentItem: Text{
    //                id: signOutBtnText
    //                text: qsTr("Sign Out")
    //                horizontalAlignment: Text.AlignHCenter
    //                verticalAlignment: Text.AlignVCenter
    //                font.pointSize: 10
    //                color: signOutBtn.hovered ? "red" : "black"

    //            }

    //        }
}
