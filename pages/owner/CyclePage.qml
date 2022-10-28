import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "components"
import "../../components"

Rectangle {
    id: bookNowPage
    property color bgColor: "#282c34"
    property real topValue: .04
    color: "black"

    //    anchors{
    //        fill: parent
    //    }
    Rectangle {
        id: bookNow
        height: parent.height * .65
        color: "#282c34"
        width: parent.width * .4
        anchors.centerIn: parent
        radius: 16
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
        // -----------------pick up point -----------------//
        InputText {
            id: pickUpPoint
            text: "Bicycle"
            title: "Vehicle Type"
            bgColor: "#ffffff"
            anchors {
                top: parent.top
                left: parent.left
                right: parent.right

                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * .05

                rightMargin: parent.width * .05
            }
            readonly: true

            titleColor: "#ffffff"
        }

        DropDownMenu {
            id: dropDownMenu
            anchors {
                top: pickUpPoint.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }

            titleColor: "#ffffff"
            bgColor: "#ffffff"
            title: "Vehicle Type"
            placeHolderText: ""
        }
        Text {
            id: avDate
            color: "#ffffff"
            text: qsTr("Available Date")
            font.pixelSize: 20
            font.family: "Verdana"
            font.styleName: "Regular"
            font.bold: false
            anchors{
                top: dropDownMenu.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
        }
        // ---------------Date Input-------------------//
        RowLayout {
            id: dateInput
            anchors {
                top: avDate.bottom
                left: parent.left
                right: parent.right

                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 7

            spacing: 12

            InputText {
                id: username
                width: parent.width / 2.1
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                title: "Start Date"
                placeHolderText: "DD/MM/YY"
            }

            InputText {
                id: password
                width: parent.width / 2.1
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                placeHolderText: "DD/MM/YY"
                title: "End Date"
            }
        }

        Text {
            id: avTime
            color: "#ffffff"
            text: qsTr("Available Time")
            font.pixelSize: 20
            font.family: "Verdana"
            font.bold: false
            anchors{
                top: dateInput.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
        }
        // ---------------Time Input-------------------//
        RowLayout {
            id: time
            anchors {
                top: avTime.bottom
                left: parent.left
                right: parent.right

                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 7

            spacing: 12

            InputText {
                id: timePick
                anchors.right: parent
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                width: parent.width / 2.1
                title: "Pick Up Time"
                placeHolderText: "HH:MM"
            }

            InputText {
                id: timeDrop
                anchors.right: parent
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                width: parent.width / 2.1
                placeHolderText: "HH:MM"
                title: "Drop Off Time"
            }
        }



        CustomButton {
            id: customButton
            anchors {
                left: parent.left
                right: parent.right
                top: time.bottom
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

            title: "Add Vehicle"
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

