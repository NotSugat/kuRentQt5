import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Window 2.3
import "components"

Item {

    Rectangle {
        id: loginContainer
        width: parent.width / 2
        height: parent.height / 1.1
        anchors.centerIn: parent

        SignUpNavbar {
            id: header
        }
        RowLayout {
            id: fullNameLayout
            anchors {
                top: header.bottom
                left: parent.left
                right: parent.right
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 8
            spacing: 12

            InputText {
                id: firstName
                width: parent.width / 2
                title: "Firstname"
                placeHolderText: "First Name"
            }

            InputText {
                id: lastName
                width: parent.width / 2
                placeHolderText: "Last Name"
                title: "Lastname"
            }
        }
        //--------------------------- Email-----------------------------------------------//
        RowLayout {
            id: emailContainer
            anchors {
                top: fullNameLayout.bottom
                left: parent.left
                right: parent.right
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 8

            spacing: 12

            InputText {
                id: email
                width: parent.width
                title: "Email"
                placeHolderText: "email@example.com"
            }
        }

        // username and Password
        RowLayout {
            id: usernamePassword
            anchors {
                top: emailContainer.bottom
                left: parent.left
                right: parent.right
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 8

            spacing: 12

            InputText {
                id: username
                width: parent.width / 2
                title: "Username"
                placeHolderText: "Username"
            }

            InputText {
                id: password
                width: parent.width / 2
                placeHolderText: "Password"
                title: "Password"
            }
        }

        // Phone and location
        RowLayout {
            id: phoneLocation
            anchors {
                top: usernamePassword.bottom
                left: parent.left
                right: parent.right
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 8

            spacing: 12

            InputText {
                id: phone
                width: parent.width / 2
                title: "Phone Number"
                placeHolderText: "Phone Number"
            }

            InputText {
                id: location
                width: parent.width / 2
                title: "Location"
                placeHolderText: "Location"
            }
        }

        // Agreement-------------------------------------------------
        Rectangle {
            id: agreementContainer

            anchors {
                top: phoneLocation.bottom
                left: parent.left
                right: parent.right
                topMargin: 12
                leftMargin: parent.width / 6
                rightMargin: parent.width / 10
            }

            width: parent.width
            height: parent.height / 15

            RowLayout {
                id: licenseAgreement
                spacing: 0

                CheckBox {
                    id: checkBox
                }

                TextField {

                    font.pointSize: 12
                    text: qsTr("I accept the Terms and Condition")
                    anchors {
                        left: checkBox.right
                        right: mainWindow.right
                    }

                    background: Rectangle {
                        height: parent.height

                        border {
                            color: "transparent"
                        }
                    }
                    color: "gray"

                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }

        //-------------------------------Register btn--------------//
        Button {
            id: submitBtn
            property color beforeHovered: "#750075"
            property color afterHovered: "#c26db4"
            property color borderColor: "black"

            anchors {
                top: agreementContainer.bottom
                left: parent.left
                right: parent.right
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
                topMargin: 24
            }
            height: parent.height / 16
            flat: true

            background: Rectangle {
                id: loginBtnBg
                width: parent.width
                height: parent.height
                color: submitBtn.hovered ? submitBtn.afterHovered : submitBtn.beforeHovered
                border.color: submitBtn.borderColor

                radius: submitBtn.hovered ? 20 : 20
            }

            contentItem: Text {
                id: loginBtnTxt
                text: qsTr("Create Account")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
                color: "white"
            }

            onClicked: database.insertIntoTable(email.text, password.text,
                                                username.text, firstName.text,
                                                lastName.text, location.text,
                                                phone.text)
                       && mainStackView.push("Login.qml")
        }

        // end of sign up section
        Rectangle {
            id: borderBottom
            width: parent.width
            height: 1
            anchors {
                top: submitBtn.bottom
                topMargin: 48
            }

            color: "purple"
            //                    anchors.centerIn: parent
        }

        Text {
            id: alreadyText
            text: "Already have An Account?"
            anchors {
                top: borderBottom.bottom
                left: parent.left
                right: parent.right
                topMargin: 12
            }
            horizontalAlignment: Text.AlignHCenter
        }

        //----------------------login btn-----------------------//
        Text {
            id: loginText

            property color hoverColor: "#00ff49"
            property color textColor: "green"

            anchors {
                left: parent.left
                right: parent.right
                top: alreadyText.bottom
                topMargin: 24
            }
            text: "Login In"
            horizontalAlignment: Text.AlignHCenter

            MouseArea {
                id: text3Hover
                anchors.fill: parent
                hoverEnabled: true
                cursorShape: Qt.PointingHandCursor
                onClicked: mainStackView.push("Login.qml")
            }

            color: text3Hover.containsMouse ? loginText.hoverColor : loginText.textColor
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

