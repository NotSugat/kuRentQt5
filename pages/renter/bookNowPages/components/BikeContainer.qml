import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../../../components"
import "../../components"

Rectangle {
    id: container
    color: "white"
    radius: 4

    property string bikeUrl: "qrc:/images/stockImages/bike/pulsar150.jpg"
    property string fullName: "Falana Dhalana"
    property string modelName: "Pulsar 150"
    property string plateNumberName: "value"
    property string startDate: "2022/02/05"
    property string endDate: "2022/02/07"
    property string price: "200"
    property string conditionText: "Perfect"

    Image {
        id: bikeImage
        anchors {
            top: parent.top
            left: parent.left
            bottom: parent.bottom
            topMargin: 10
            leftMargin: 10
            bottomMargin: 10
        }

        source: bikeUrl
        width: parent.width * 0.2
        height: parent.height
        fillMode: Image.PreserveAspectCrop
    }

    //details text----------------------------------//
    Rectangle {
        id: detailsContainer
        anchors {
            top: parent.top
            left: bikeImage.right
            right: parent.right
            bottom: parent.bottom
            leftMargin: 12
        }
        radius: 4

        Text {
            id: bikeModel
            text: modelName
            anchors {
                top: parent.top
                topMargin: 12
            }

            font.bold: true
            padding: 12
        }
        ImageTextField {
            id: username
            name: fullName
            anchors {
                top: bikeModel.bottom
                left: parent.left
                leftMargin: 12
            }
        }
        ImageTextField {
            id: plateNumber
            imgUrl: "qrc:/images/stockImages/bike/bikeNumber.png"
            name: plateNumberName
            imgHeight: 25
            imgWidth: 80
            anchors {
                top: username.bottom
                topMargin: 12
                left: parent.left
                leftMargin: 12
            }
        }

        Condition {
            id: condition
            anchors {
                top: username.bottom
                topMargin: 15
                left: plateNumber.right
                leftMargin: 12
            }
            condition: conditionText
        }

        RowInput {
            id: dateStart
            leftTextColor: "black"
            rightTextColor: "#000000"
            leftText: "Start Date"
            rightText: startDate
            anchors {
                bottom: parent.bottom
                bottomMargin: 10
            }
        }
        RowInput {
            id: dateEnd
            leftTextColor: "black"
            rightTextColor: "#000000"
            leftText: "End Date"
            rightText: endDate
            anchors {
                left: dateStart.right
                leftMargin: 20
                bottom: parent.bottom
                bottomMargin: 10
            }
        }

        Text {
            id: prices
            text: "Rs " + price
            font.pixelSize: 42
            anchors {
                right: parent.right
                rightMargin: 50
            }
        }
        Text {
            id: perDayText
            text: "/Day"
            anchors {
                left: prices.right
                leftMargin: 5
                bottom: prices.bottom
            }
            color: "gray"
        }
        CustomButton {
            id: bookNow
            height: 50
            width: 200
            colorMouseOver: "#0b58a5"
            colorDefault: "#454575"
            title: "Book Now"

            anchors {
                bottom: parent.bottom
                right: parent.right
                rightMargin: 12
                bottomMargin: 12
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

