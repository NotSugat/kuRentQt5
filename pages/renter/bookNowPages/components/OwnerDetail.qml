import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.1
import "../../components"

//-------------------------user detail text and logo----------------///
Rectangle {
    id: userDetailDiv
    anchors.fill: fill

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
        Rectangle {
            id: profilePic
            anchors {
                right: parent.right

                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
            }
            height: parent.height * 0.4
            width: parent.height * 0.4

            //            source: database.ProfileUrl
            //            fillMode: Image.PreserveAspectCrop
        }
    }
    Rectangle {
        id: userDetailContent
        anchors {
            left: profileContainer.right
            right: parent.right
            top: parent.top

            //                        topMargin: parent.width * 0.03
            bottom: parent.bottom
        }
        color: "transparent"

        //-------------------full name------------//
        RowInput {
            id: name
            anchors {
                top: parent.top
                topMargin: parent.height * 0.15
                left: parent.left
                leftMargin: parent.height * 0.05
            }
            leftText: "Name"
            rightText: database.FirstName + " " + database.LastName
        }
        RowInput {
            id: email
            anchors {
                top: name.bottom
                left: parent.left
                leftMargin: parent.height * 0.05
            }
            leftText: "Email"
            rightText: database.Email
            rightTextColor: "cyan"
        }

        RowInput {
            id: phoneNumber
            anchors {
                top: email.bottom
                left: parent.left
                leftMargin: parent.height * 0.05
            }
            leftText: "Phone"
            rightText: database.Number
        }

        RowInput {
            id: gender
            anchors {
                top: phoneNumber.bottom
                left: parent.left
                leftMargin: parent.height * 0.05
            }
            leftText: "Gender"
            rightText: database.Gender
        }

        RowInput {
            id: location
            anchors {
                top: gender.bottom
                left: parent.left
                leftMargin: parent.height * 0.05
            }
            leftText: "Address"
            rightText: database.Location
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
