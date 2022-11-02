import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtQuick.Dialogs 1.1
import "components"

Item {

    Rectangle {
        id: mainArea
        width: parent.width * .45
        height: parent.height
        color: "#ffffff"

        Image {
            id: loginLogo

            height: parent.height / 3
            anchors.top: parent.top
            source: "qrc:/images/logo.png"
            fillMode: Image.PreserveAspectFit
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 50
            anchors.right: parent.right
            anchors.rightMargin: 50
        }

        Rectangle {
            id: inputArea
            height: 350
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.top: loginLogo.bottom
            anchors.topMargin: 50
            color: "transparent"

            TextField {
                id: userName
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                height: parent.height / 10
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
                placeholderText: "User Name"
                color: "black"

                background: Rectangle {
                    id: borderBottom
                    width: parent.width
                    height: 2
                    anchors.bottom: parent.bottom
                    color: "black"
                }
            }
            TextField {
                id: userPassword
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: userName.bottom
                anchors.topMargin: 30
                height: parent.height / 10
                placeholderText: "Password"
                font.pointSize: 12
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: "black"
                echoMode: TextInput.Password

                background: Rectangle {
                    id: borderBottom1
                    width: parent.width
                    height: 2
                    anchors.bottom: parent.bottom
                    color: "black"
                }
            }
            //----------------------Login Btn --------------------------------------------//
            Button {
                id: loginBtn
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: userPassword.bottom
                anchors.topMargin: 30
                height: parent.height / 8
                flat: true

                background: Rectangle {
                    id: loginBtnBg
                    width: parent.width
                    height: parent.height
                    color: loginBtn.hovered ? "black" : "purple"
                    border.color: "black"

                    radius: 20
                }

                contentItem: Text {
                    id: loginBtnTxt
                    text: qsTr("Login")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 12
                    color: "white"
                }

                onClicked: if (database.validation(
                                       userName.text, userPassword.text,
                                       userName.text) === "renter") {

                               mainStackView.push("qrc:/renterPage.qml")
                           } else if (database.validation(
                                          userName.text, userPassword.text,
                                          userName.text) === "owner") {

                               mainStackView.push(
                                           "qrc:/pages/owner/MainOwnerPage.qml")
                           } else if (database.validation(
                                          userName.text, userPassword.text,
                                          userName.text) === "admin") {

                               mainStackView.push("qrc:/adminPanel.qml")
                           } else {
                               messageDialog.open()
                           }
            }

            //---------------------------Message Dialogue-----------------------//
            MessageDialog {
                id: messageDialog
                title: "Invalid Login Credential"
                text: "Email and Password doesn't match"
                icon: StandardIcon.Warning
                standardButtons: StandardButton.Retry
                informativeText: "Register Now"
                onAccepted: {
                    console.log("And of course you could only agree.")
                }
            }

            /* -------------------------------------SignUp section ----------------*/
            Text {
                id: signUpText
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: qsTr("Sign Up?")
                font.pointSize: 12
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: loginBtn.bottom
                anchors.topMargin: 30

                MouseArea {
                    id: signUpBtn
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: mainStackView.push("SignUp.qml")
                }
                color: signUpBtn.containsMouse ? "green" : "black"
            }
        }
    }
}
