import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "components"
import "../../components"

Item {
    id: bookNowPage
    property color bgColor: "#f0daa3"

    //    anchors{
    //        fill: parent
    //    }
    Rectangle {
        id: bookNow
        height: parent.height / 1.25
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
                topMargin: 20
                leftMargin: parent.width * .05

                rightMargin: parent.width * .05
            }

            titleColor: "#000000"
        }
        // -----------------pick up point -----------------//
        InputText {
            id: location
            title: "Pick up Location"
            placeHolderText: "Pick up Location"
            bgColor: "#ffffff"
            anchors {
                top: pickUpPoint.bottom
                left: parent.left
                right: parent.right
                leftMargin: parent.width * .05
                rightMargin: parent.width * .05
            }

            titleColor: "#000000"
        }
        DateInput {
            id: dateInput
            anchors {
                left: parent.left
                leftMargin: parent.width * 0.1
            }

            y: 219
            title: "Pick Up Date"
            placeHolderText: "DD/MM/YY"
        }

        DateInput {
            id: dateInput1
            anchors {
                right: parent.right
                rightMargin: parent.width * 0.1
            }

            y: 219
            placeHolderText: "DD/MM/YY"
            title: "Drop off Date"
        }
        DateInput {
            id: pickTime

            anchors {
                left: parent.left
                leftMargin: parent.width * 0.1
            }

            y: 309
            placeHolderText: "Pick Time"
            title: "Pick Time"
        }
        DateInput {
            id: dropTime

            anchors {
                right: parent.right
                rightMargin: parent.width * 0.1
            }

            y: 309

            placeHolderText: "Drop Time"
            title: "Drop Time"
        }

        DropDownMenu {
            id: dropDownMenu
            x: 37
            y: 410
            titleColor: "#000000"
            bgColor: "#454575"
            title: "Vehicle Type"
            placeHolderText: ""
        }

        CustomButton {
            id: customButton
            anchors {
                left: parent.left
                right: parent.right
                //                leftMargin: parent.width * 0.2
                //                rightMargin: parent.width * 0.2
                leftMargin: parent.width * 0.1
                rightMargin: parent.width * 0.1
            }

            y: 484
            width: parent.width
            height: 30
            colorMouseOver: "#0b58a5"
            colorDefault: "#454575"

            title: "Book Now"
        }

        //        Test {
        //            id:test
        //        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.25;height:850;width:640}
}
##^##*/

