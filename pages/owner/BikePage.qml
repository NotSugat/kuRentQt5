import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Dialogs 1.1
import "components"
import "../../components"

Rectangle {
    id: bookNowPage
    property color bgColor: "#282c3f"
    property real topValue: .06
    property real rowGap: .045
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
        height: parent.height * .6
        color: "#353a48"
        width: parent.width * .4
        anchors.centerIn: parent
        radius: 16
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0
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
            DropDownVehicle {
                id: vehicleType

                anchors.right: parent
                width: parent.width / 2.1
            }

            InputText {
                id: bikeSource
                anchors.right: parent
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                width: parent.width / 2.1
                placeHolderText: "https:/example.com/image/"
                title: "Bike Photo (Url)"
            }
        }

        // -----------------Model and plate Number section -----------------//
        RowLayout {
            id: firstRow
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

            InputText {
                id: model
                anchors.right: parent
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                width: parent.width / 2.1
                title: "Model"
                placeHolderText: "Bike Model"
            }

            InputText {
                id: plateNumber
                anchors.right: parent
                titleColor: "#ffffff"
                bgColor: "#ffffff"
                width: parent.width / 2.1
                placeHolderText: "03 BA 001 1234"
                title: "Plate Number"
            }
        }
        //        RowLayout {
        //            id: firstRow
        //            spacing: 5

        //            anchors {
        //                top: vehicleDetails.bottom
        //                left: parent.left
        //                right: parent.right

        //                leftMargin: parent.width * 0.05
        //                rightMargin: parent.width * 0.05
        //            }
        //            InputText {
        //                id: model
        //                title: "Model"
        //                placeHolderText: "Bike Model"
        //                bgColor: "#ffffff"
        //                Layout.preferredWidth: parent.width * 0.3
        //                titleColor: "#ffffff"
        //            }
        //            InputText {
        //                id: plateNumber
        //                title: "Plate Number"
        //                placeHolderText: "03 BA 001 1234"
        //                bgColor: "#ffffff"
        //                Layout.preferredWidth: parent.width * 0.3
        //                titleColor: "#ffffff"
        //            }
        //        InputText {
        //                id: plateNumber
        //                title: "Plate Number"
        //                placeHolderText: "03 BA 001 1234"
        //                bgColor: "#ffffff"
        //                Layout.preferredWidth: parent.width * 0.3
        //                titleColor: "#ffffff"
        //            }
        //        }

        //--------------------condition and price section----------------------------------//
        RowLayout {
            id: conditionPriceSection
            anchors {
                top: firstRow.bottom
                left: parent.left
                right: parent.right
                topMargin: parent.height * bookNowPage.rowGap
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }
            height: parent.height / 7

            spacing: 12

            ConditionDropDown {
                id: condition

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

        // ---------------Date Input-------------------//
        Rectangle {
            id: dateInput
            anchors {
                top: conditionPriceSection.bottom
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

        //        RowLayout {
        //            id: dateInput
        //            anchors {
        //                top: avDate.bottom
        //                left: parent.left
        //                right: parent.right

        //                leftMargin: parent.width * 0.05
        //                rightMargin: parent.width * 0.05
        //            }

        //            height: parent.height / 7
        //            DateInput {
        //                id: random
        //                width: 50
        //            }

        //            DateInput {
        //                id: dateStart
        //                Layout.preferredWidth: 100
        //                titleColor: "#ffffff"
        //                bgColor: "#ffffff"
        //                title: "Start Date"
        //                placeHolderText: "DD/MM/YY"
        //            }
        //            DateInput {
        //                id: dateEnd

        //                titleColor: "#ffffff"
        //                bgColor: "#ffffff"
        //                placeHolderText: "DD/MM/YY"
        //                title: "End Date"
        //            }
        //        }
        //        //---------------Time Input-------------------//
        //        RowLayout {
        //            id: time
        //            anchors {
        //                top: dateInput.bottom
        //                left: parent.left
        //                right: parent.right
        //                topMargin: parent.height * bookNowPage.rowGap
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
        Rectangle {
            id: marginRect
            anchors {
                left: parent.left
                right: parent.right
                top: dateInput.bottom
            }
            height: 20
            color: "transparent"
        }
        OwnerCustomButton {
            id: customButton
            anchors {
                left: parent.left
                right: parent.right
                top: marginRect.bottom
                topMargin: parent.height * bookNowPage.rowGap
                //                leftMargin: parent.width * 0.2
                //                rightMargin: parent.width * 0.2
                leftMargin: parent.width * 0.05
                rightMargin: parent.width * 0.05
            }

            width: parent.width
            height: 30
            colorMouseOver: "#0b58a5"
            colorDefault: "#6993bc"

            title: "Add Vehicle"
            MouseArea {
                id: mouse
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: if (model.text && dateStart.text && dateEnd.text
                                   && bikeSource.text) {
                               vehicleDatabase.insertIntoTable(
                                           database.FirstName,
                                           database.LastName, database.Number,
                                           vehicleType.text, model.text,
                                           plateNumber.text, price.text,
                                           dateStart.text, dateEnd.text,
                                           bikeSource.text, condition.text)
                               goodMessageDialog.open()
                           } else {
                               messageDialog.open()
                           }
            }
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
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

