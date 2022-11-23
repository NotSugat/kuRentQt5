import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.1
import "components"
import "../../components"

Rectangle {
    id: bookNowPage
    property color bgColor: "#282c34"
    property real topValue: .05
    property real rowGap: 0.06
    property bool isVisible: false
    color: "#262a33"

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
        height: parent.height * .5
        color: "#353a48"
        width: parent.width * .4
        anchors.centerIn: parent
        radius: 16

        // -----------------pick up point -----------------//
        // -----------------Vehicle Details -----------------//
        RowLayout {
            id: vehicleDetails
            anchors {
                top: parent.top
                left: parent.left
                right: parent.right

                topMargin: parent.height * bookNowPage.topValue
                leftMargin: parent.width * .05

                rightMargin: parent.width * .05
            }
            height: parent.height / 7

            spacing: 12
            InputText {
                id: vehicleType
                text: "Bicyle"
                title: "Vehicle Type"
                bgColor: "#ffffff"
                anchors.right: parent
                width: parent.width / 2.1
                readonly: true

                titleColor: "#ffffff"
            }

            InputText {
                id: cycleSource
                anchors.right: parent
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                width: parent.width / 2.1
                placeHolderText: "https:/example.com/image/"
                title: "Bike Photo (Url)"
            }
        }

        //        InputText {
        //            id: vehicleType
        //            text: "Bicycle"
        //            title: "Vehicle Type"
        //            bgColor: "#ffffff"
        //            anchors {
        //                top: parent.top
        //                left: parent.left
        //                right: parent.right

        //                topMargin: parent.height * bookNowPage.topValue
        //                leftMargin: parent.width * .05

        //                rightMargin: parent.width * .05
        //            }
        //            readonly: true

        //            titleColor: "#ffffff"
        //        }
        //--------------------Model and price section----------------------------------//
        RowLayout {
            id: modelPriceSection
            anchors {
                top: vehicleDetails.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.rowGap
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 7

            spacing: 12

            CycleModelDropDown {
                id: cycleModel

                anchors.right: parent
                width: parent.width / 2.1
            }
            InputText {
                id: price
                anchors.right: parent
                title: "Price per day (NRs)"
                placeHolderText: "Price in Rs (per day)"
                bgColor: "#ffffff"
                width: parent.width / 2.1
                titleColor: "#ffffff"
            }
        }

        //        DropDownMenu {
        //            id: model
        //            anchors {
        //                top: vehicleDetails.bottom
        //                left: parent.left
        //                right: parent.right
        //                topMargin: parent.height * bookNowPage.topValue
        //                leftMargin: parent.width * 0.05
        //                rightMargin: parent.width * 0.05
        //            }

        //            titleColor: "#ffffff"
        //            bgColor: "#ffffff"
        //            title: "Vehicle Type"
        //            placeHolderText: ""
        //        }

        //----------------white margin box-------------------------//
        Rectangle {
            id: whiteSpace
            anchors {
                top: modelPriceSection.bottom
                left: parent.left
                right: parent.right
            }

            color: "transparent"
            height: parent.height * 0.01
        }

        //        Text {
        //            id: avDate
        //            color: "#ffffff"
        //            text: qsTr("Available Date")
        //            font.pixelSize: 20
        //            //            padding: parent.height * bookNowPage.rowGap
        //            leftPadding: 0
        //            horizontalAlignment: Text.AlignHCenter
        //            font.family: "Verdana"
        //            font.styleName: "Regular"
        //            font.bold: false
        //            anchors {
        //                top: whiteSpace.bottom
        //                left: parent.left
        //                right: parent.right
        //                topMargin: parent.height * 0.07
        //                leftMargin: parent.width * 0.05
        //                rightMargin: parent.width * 0.05
        //            }
        //        }

        // ---------------Date Input-------------------//
        Rectangle {
            id: dateInput
            anchors {
                top: modelPriceSection.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.rowGap
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 7
            color: "transparent"

            DateInput {
                id: dateStart
                width: parent.width / 2.1
                date: dateStart.textVisible ? startCalender.text : ""
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                title: "Start Date"
                placeHolderText: "DD/MM/YY"
            }

            DateInput {
                id: dateEnd
                anchors.left: dateStart.right
                anchors.leftMargin: parent.width * 0.04
                width: parent.width / 2.12
                date: dateEnd.textVisible ? endCalender.text : ""
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                placeHolderText: "DD/MM/YY"
                title: "End Date"
            }
        }

        //        // ---------------Time Input-------------------//
        //        RowLayout {
        //            id: time
        //            anchors {
        //                top: dateInput.bottom
        //                left: parent.left
        //                right: parent.right
        //                topMargin: 8
        //                leftMargin: parent.width * 0.05
        //                rightMargin: parent.width * 0.05
        //            }
        //            height: parent.height / 7

        //            spacing: 12

        //            InputText {
        //                id: timePick
        //                anchors.right: parent
        //                titleColor: "#ffffff"
        //                bgColor: "#ffffff"
        //                width: parent.width / 2.1
        //                title: "Pick Up Time"
        //                placeHolderText: "HH:MM"
        //            }

        //            InputText {
        //                id: timeDrop
        //                anchors.right: parent
        //                titleColor: "#ffffff"
        //                bgColor: "#ffffff"
        //                width: parent.width / 2.1
        //                placeHolderText: "HH:MM"
        //                title: "Drop Off Time"
        //            }
        //        }
        CustomButton {
            id: customButton
            anchors {
                left: parent.left
                right: parent.right
                top: dateInput.bottom
                topMargin: parent.height * 0.12
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
                onClicked: if (dateStart.text && dateEnd.text && price.text) {
                               cycleDatabase.insertIntoTable(
                                           database.FirstName,
                                           database.LastName, database.Number,
                                           vehicleType.text, cycleModel.text,
                                           dateStart.text, dateEnd.text,
                                           price.text, cycleSource.text)
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
                topMargin: parent.height * 0.02
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

