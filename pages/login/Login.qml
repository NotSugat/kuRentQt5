import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12
import QtQuick.Dialogs 1.1
import "components"

Rectangle {
    anchors.fill: parent
    color: "#262a33"

    //        SignUpNavbar{id: loginText}
    Rectangle {
        id: mainArea
        width: parent.width * .3
        height: parent.height * .9
        color: "#353a48"
        radius: 16

        anchors {

            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
        LoginNavBar {
            id: loginTitle
        }

        Image {
            id: loginLogo

            height: parent.height / 2
            anchors.top: loginTitle.bottom
            source: "qrc:/images/logoGreen.png"
            fillMode: Image.PreserveAspectFit

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
            anchors.topMargin: 20
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
                color: "#bbb"

                background: Rectangle {
                    id: borderBottom
                    width: parent.width
                    height: 2
                    anchors.bottom: parent.bottom
                    color: "#778"
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
                color: "#bbb"
                echoMode: TextInput.Password

                background: Rectangle {
                    id: borderBottom1
                    width: parent.width
                    height: 2
                    anchors.bottom: parent.bottom
                    color: "#778"
                }
            }
            //----------------------Login Btn --------------------------------------------//
            Button {
                id: loginBtn
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: userPassword.bottom
                anchors.topMargin: parent.height * 0.1
                height: parent.height / 8
                flat: true

                background: Rectangle {
                    id: loginBtnBg
                    width: parent.width
                    height: parent.height
                    color: loginBtn.hovered ? "#c26db4" : "purple"
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

                               mainStackView.push(
                                           "qrc:/pages/renter/MainRenterPage.qml")
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
                anchors.topMargin: 20

                MouseArea {
                    id: signUpBtn
                    anchors.fill: parent
                    hoverEnabled: true
                    onClicked: mainStackView.push("SignUp.qml")
                }
                color: signUpBtn.containsMouse ? "#adc9ed" : "#fedafe"
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:480;width:640}
}
##^##*/

