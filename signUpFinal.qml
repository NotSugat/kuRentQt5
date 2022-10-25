import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Sign Up Test")

    Rectangle {
        id: mainWindow
        width: parent.width / 2
        height: parent.height / 2
        anchors.centerIn: parent

        //Sign Up navbar
        Rectangle {
            id: signUp
            anchors {
                left: mainWindow.left
                right: mainWindow.right
                top: mainWindow.top
                topMargin: 0
            }

            width: parent.width
            height: parent.height / 8

            TextField {
                id: signUpField
                width: parent.width
                height: parent.height
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                text: qsTr("Sign Up")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.bold: true
                font.pointSize: 20
                color: "Purple"

                background: Rectangle {
                    id: borderBottom
                    width: parent.width
                    height: 2
                    anchors.bottom: parent.bottom
                    color: "purple"
                    //                    anchors.centerIn: parent
                }
            }
        }

        //firstName lastName
        Rectangle {
            id: fullName
            anchors {
                top: signUp.bottom
                left: parent.left
                right: parent.right
                leftMargin: parent.width * .16
                rightMargin: parent.width * .16
                topMargin: 20
            }
            width: parent.width
            height: parent.height / 15

            RowLayout {
                id: rowFullName
                spacing: 0

                ColumnLayout {
                    id: firstNameColumn

                    spacing: 12

                    Text {
                        id: firstNameText
                        text: qsTr("First Name")

                        Layout.preferredWidth: 100

                        font.pointSize: 8
                        color: "black"

                        verticalAlignment: Text.AlignVCenter
                    }
                    TextField {
                        id: firstNameInput
                        Layout.alignment: parent
                        font.pointSize: 12
                        placeholderText: "First Name"

                        background: Rectangle {
                            height: parent.height

                            border.width: 1
                            border {
                                color: "transparent"
                            }
                            width: parent.width
                            color: "#E5E5E5"
                            radius: 5
                        }

                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }

                ColumnLayout {
                    id: lastName
                    spacing: 0

                    TextField {
                        text: qsTr("Last Name")
                        Layout.preferredWidth: 100
                        Layout.preferredHeight: fullName.height
                        font.pointSize: 10

                        background: Rectangle {
                            color: "transparent"
                        }
                        color: "black"
                    }
                    TextField {

                        font.pointSize: 12
                        placeholderText: "Last Name"
                        anchors {
                            left: parent.left
                            right: parent.right
                        }

                        background: Rectangle {
                            height: parent.height

                            border.width: 1
                            border {
                                color: "transparent"
                            }
                            width: 200
                            color: "#E5E5E5"
                            radius: 5
                        }

                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }

        //Second Row email and third row password
        Rectangle {
            id: secondRow

            anchors {
                top: fullName.bottom
                left: parent.left
                right: parent.right
                topMargin: 40
                leftMargin: parent.width / 6
                rightMargin: parent.width / 10
            }

            width: parent.width
            height: parent.height / 15

            ColumnLayout {
                id: email
                spacing: 0

                TextField {
                    text: qsTr("Email")
                    Layout.preferredWidth: 100
                    Layout.preferredHeight: fullName.height
                    font.pointSize: 10

                    background: Rectangle {
                        color: "transparent"
                    }
                    color: "black"
                }

                TextField {

                    font.pointSize: 12
                    placeholderText: "Email"
                    anchors {
                        left: email.left
                        right: mainWindow.right
                    }

                    background: Rectangle {
                        height: parent.height

                        border.width: 1
                        border {
                            color: "transparent"
                        }
                        width: 450
                        color: "#E5E5E5"
                        radius: 5
                    }

                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Rectangle {
                id: thirdRow

                anchors {
                    top: email.bottom
                    left: parent.left
                    right: parent.right
                    topMargin: 15

                    rightMargin: parent.width / 10
                }

                width: parent.width
                height: parent.height / 15

                ColumnLayout {
                    id: password
                    spacing: 0

                    TextField {
                        text: qsTr("Password")
                        Layout.preferredWidth: 100
                        Layout.preferredHeight: fullName.height
                        font.pointSize: 10

                        background: Rectangle {
                            color: "transparent"
                        }
                        color: "black"
                    }

                    TextField {

                        font.pointSize: 12
                        placeholderText: "6+ Characters"
                        anchors {
                            left: email.left
                            right: mainWindow.right
                        }
                        echoMode: TextInput.Password

                        background: Rectangle {
                            height: parent.height

                            border.width: 1
                            border {
                                color: "transparent"
                            }
                            width: 450
                            color: "#E5E5E5"
                            radius: 5
                        }

                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }

        //forth row agreement
        Rectangle {
            id: forthRow

            anchors {
                top: secondRow.bottom
                left: parent.left
                right: parent.right
                topMargin: 120
                leftMargin: parent.width / 6
                rightMargin: parent.width / 10
            }

            width: parent.width
            height: parent.height / 15

            RowLayout {
                id: licenseAgreement
                spacing: 0

                CheckBox {}

                TextField {

                    font.pointSize: 12
                    text: qsTr("I accept the license Agreement")
                    anchors {
                        left: email.left
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

        Button {
            id: submitBtn
            anchors {
                top: forthRow.bottom
                left: parent.left
                right: parent.right
                topMargin: 20
                leftMargin: parent.width / 6
                rightMargin: parent.width / 10
            }
            height: parent.height / 8
            flat: true

            background: Rectangle {
                id: loginBtnBg
                width: parent.width
                height: parent.height
                color: submitBtn.hovered ? "#D7A1F9" : "#750075"
                border.color: "black"

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
        }


        /*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
    }
}
