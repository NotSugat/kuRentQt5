import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.1
import "components"
import "../../components"

Rectangle {
    id: bookNowPage
    property color bgColor: "#282c34"
    property real topValue: .04
    property bool isVisible: false
    color: "black"

    DatePicker {
        id: startCalender
        visible: dateStart.dropDownClick
        anchors {
            left: parent.left
            leftMargin: parent.width * 0.05
            verticalCenter: parent.verticalCenter
        }
    }
    DatePicker {
        id: endCalender
        visible: dateEnd.dropDownClick
        anchors {
            right: parent.right
            rightMargin: parent.width * 0.05
            verticalCenter: parent.verticalCenter
        }
    }
    Rectangle {
        id: bookNow
        height: parent.height * .6
        color: "#282c34"
        width: parent.width * .4
        anchors.centerIn: parent
        radius: 16

        // -----------------pick up point -----------------//
        InputText {
            id: vehicleType
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
            id: model
            anchors {
                top: vehicleType.bottom
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
            anchors {
                top: model.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
        }
        // ---------------Date Input-------------------//
        Rectangle {
            id: dateInput
            anchors {
                top: avDate.bottom
                left: parent.left
                right: parent.right

                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 7
            color: "transparent"

            DateInput {
                id: dateStart
                width: parent.width / 2.05
                date: dateStart.textVisible ? startCalender.text : ""
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                title: "Start Date"
                placeHolderText: "DD/MM/YY"
            }

            DateInput {
                id: dateEnd
                anchors.right: parent.right
                width: parent.width / 2.05
                date: dateEnd.textVisible ? endCalender.text : ""
                titleColor: "#ffffff"
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
                topMargin: 8
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
                topMargin: parent.height * 0.06
                //                leftMargin: parent.width * 0.2
                //                rightMargin: parent.width * 0.2
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }

            width: parent.width
            height: 30
            colorMouseOver: "#0b58a5"
            colorDefault: "#454575"
            MouseArea {
                id: mouse
                anchors.fill: parent
                onClicked: if (dateStart.text && dateEnd.text && timePick.text
                                   && timeDrop.text) {
                               cycleDatabase.insertIntoTable(
                                           database.FirstName,
                                           database.LastName, database.Number,
                                           vehicleType.text, model.text,
                                           dateStart.text, dateEnd.text,
                                           timePick.text, timeDrop.text)
                               goodMessageDialog.open()
                           } else {
                               messageDialog.open()
                           }
            }

            title: "Add Vehicle"
        }
        MessageDialog {
            id: goodMessageDialog
            title: "Thank you!"
            text: "Your vehicle has been Listed"
            icon: StandardIcon.Information
            standardButtons: StandardButton.Ok

            onAccepted: {
                ownerStackView.push("HomePage.qml")
            }
        }
        MessageDialog {
            id: messageDialog
            title: "Incomplete text Field"
            text: "Fill all the empty Field before submitting"
            icon: StandardIcon.Warning
            standardButtons: StandardButton.Retry
            //            informativeText: "Fill all the empty Field before submitting"
            onAccepted: {
                console.log("And of course you could only agree.")
            }
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
                onClicked: ownerStackView.push("HomePage.qml")
            }
            color: textHover.containsMouse ? "red" : "white"
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:850;width:640}
}
##^##*/

