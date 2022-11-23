import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.1
import "../../components"
import "components"

Rectangle {
    id: content

    property int fontSize: 16
    property real rowGap: 0.03
    property color bgColor: "#262a33"
    property color infoColor: "#353a48"
    property color textColor: "white"
    property color hyperlink: "cyan"

    color: "#282c34"
    anchors.left: statusBar.left
    anchors.right: parent.right
    anchors.top: statusBar.bottom
    anchors.bottom: parent.bottom
    anchors.topMargin: 0

    OwnerSidebar {
        id: sidebar
        accountActive: true
        z: 100
    }

    Rectangle {
        id: container
        anchors {
            left: sidebar.right
            right: parent.right
            top: parent.top
            bottom: parent.bottom
        }
        color: "transparent"

        Rectangle {
            id: myInfo
            height: parent.height / 3
            width: parent.width / 3

            color: content.infoColor
            anchors {
                centerIn: parent
            }
            radius: 4
            // user detail info and logo
            Rectangle {
                id: userDetail
                anchors {
                    left: parent.left
                    right: parent.right
                    top: parent.top
                    topMargin: parent.height * content.rowGap
                }
                color: "transparent"
                height: 24

                z: 10

                Image {
                    id: userDetailImg
                    source: "qrc:/images/userInfo.png"
                    height: 24
                    width: 24
                    anchors {
                        right: userDetailText.left
                        rightMargin: 8
                    }
                }

                Text {
                    id: userDetailText
                    text: qsTr("User Detail")
                    font.pixelSize: 24
                    anchors {
                        horizontalCenter: parent.horizontalCenter
                    }
                    color: content.textColor
                    font.bold: true
                }
            }

            //-------------------------user detail text and logo----------------///
            Rectangle {
                id: userDetailDiv
                anchors {
                    left: parent.left
                    right: parent.right
                    top: userDetail.bottom
                    bottom: parent.bottom
                }
                height: 24
                color: "transparent"

                // -----------------profile pic----------------//
                Rectangle {
                    id: profileContainer
                    anchors {
                        left: parent.left
                        leftMargin: parent.width * 0.1
                        top: parent.top
                        bottom: parent.bottom
                    }
                    width: parent.width * 0.3
                    color: "transparent"
                    Text {
                        id: profileText
                        text: qsTr("My Info")
                        padding: 12
                        anchors {
                            top: parent.top
                            topMargin: parent.height * 0.05
                            horizontalCenter: parent.horizontalCenter
                        }
                        color: content.textColor
                        font.pixelSize: 24
                        font.family: "Tahoma"
                    }
                    Image {
                        id: profilePic
                        anchors {
                            right: parent.right

                            verticalCenter: parent.verticalCenter
                            horizontalCenter: parent.horizontalCenter
                        }
                        height: parent.height * 0.4
                        width: parent.height * 0.4

                        source: database.ProfileUrl
                        fillMode: Image.PreserveAspectCrop
                    }
                }
                Rectangle {
                    id: userDetailContent
                    anchors {
                        left: profileContainer.right
                        right: parent.right
                        top: parent.top
                        topMargin: parent.width * 0.03

                        bottom: parent.bottom
                    }
                    color: "transparent"
                    //-------------------full name------------//
                    RowInput {
                        id: name
                        anchors {
                            top: fullName.bottom
                            horizontalCenter: parent.horizontalCenter
                        }
                        leftText: "Name"
                        rightText: database.FirstName + " " + database.LastName
                    }
                    RowInput {
                        id: email
                        anchors {
                            top: name.bottom
                            horizontalCenter: parent.horizontalCenter
                        }
                        leftText: "Email"
                        rightText: database.Email
                        rightTextColor: "cyan"
                    }

                    RowInput {
                        id: phoneNumber
                        anchors {
                            top: email.bottom
                            horizontalCenter: parent.horizontalCenter
                        }
                        leftText: "Phone"
                        rightText: database.Number
                    }

                    RowInput {
                        id: gender
                        anchors {
                            top: phoneNumber.bottom
                            horizontalCenter: parent.horizontalCenter
                        }
                        leftText: "Gender"
                        rightText: database.Gender
                    }

                    RowInput {
                        id: location
                        anchors {
                            top: gender.bottom
                            horizontalCenter: parent.horizontalCenter
                        }
                        leftText: "Address"
                        rightText: database.Location
                    }
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

