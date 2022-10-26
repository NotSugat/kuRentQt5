import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "components"
import "../../components"

Item {
    id: bookNowPage
    property color bgColor: "#f0daa3"
    property real topValue: .04

    //    anchors{
    //        fill: parent
    //    }
    Rectangle {
        id: bookNow
        height: parent.height * .90
        color: "#50afff"
        width: parent.width * .4
        anchors.centerIn: parent
        radius: 16
        // -----------------pick up point -----------------//
        InputText {
            id: pickUpPoint
            bgColor: "#ffffff"
            anchors {
                top: parent.top
                left: parent.left
                right: parent.right

                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * .05

                rightMargin: parent.width * .05
            }

            titleColor: "#000000"
        }
        // -----------------pick up location -----------------//
        InputText {
            id: location
            title: "Pick up Location"
            placeHolderText: "Pick up Location"
            bgColor: "#ffffff"
            anchors {
                top: pickUpPoint.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * .05
                rightMargin: parent.width * .05
            }

            titleColor: "#000000"
        }

        // ---------------Date Input-------------------//
        RowLayout {
            id: dateInput
            anchors {
                top: location.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 7

            spacing: 12

            InputText {
                id: username
                width: parent.width / 2.1
                bgColor: "#ffffff"
                title: "Start Date"
                placeHolderText: "DD/MM/YY"
            }

            InputText {
                id: password
                width: parent.width / 2.1
                bgColor: "#ffffff"
                placeHolderText: "DD/MM/YY"
                title: "End Date"
            }
        }
        // ---------------Time Input-------------------//
        RowLayout {
            id: time
            anchors {
                top: dateInput.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 7

            spacing: 12

            InputText {
                id: timePick
                anchors.right: parent
                bgColor: "#ffffff"
                width: parent.width / 2.1
                title: "Pick Up Time"
                placeHolderText: "HH:MM"
            }

            InputText {
                id: timeDrop
                anchors.right: parent
                bgColor: "#ffffff"
                width: parent.width / 2.1
                placeHolderText: "HH:MM"
                title: "Drop Off Time"
            }
        }

        DropDownMenu {
            id: dropDownMenu
            anchors {
                top: time.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }

            titleColor: "#000000"
            bgColor: "#ffffff"
            title: "Vehicle Type"
            placeHolderText: ""
        }

        CustomButton {
            id: customButton
            anchors {
                left: parent.left
                right: parent.right
                top: dropDownMenu.bottom
                topMargin: parent.height * bookNowPage.topValue
                //                leftMargin: parent.width * 0.2
                //                rightMargin: parent.width * 0.2
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }

            width: parent.width
            height: 30
            colorMouseOver: "#0b58a5"
            colorDefault: "#454575"

            title: "Book Now"
        }

        Text {
            id: notNow
            text: qsTr("Not Now?")
            font.pixelSize: 16
            anchors {
                top: customButton.bottom
                left: parent.left
                right: parent.right
                topMargin: 5
            }
            horizontalAlignment: Text.AlignHCenter

            MouseArea {
                id: textHover
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                hoverEnabled: true
                onClicked: stackView.push("Dashboard.qml")
            }
            color: textHover.containsMouse ? "red" : "white"
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.25;height:850;width:640}
}
##^##*/

