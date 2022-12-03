import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../../../components"
import "../../components"

Rectangle {
    id: container

    color: bikeBg //"#252e4c"
    radius: 4

    property string bikeUrl: "qrc:/images/stockImages/bike/pulsar150.jpg"
    property string fullName: "Falana Dhalana"
    property string modelName: "Pulsar 150"
    property string plateNumberName: "value"
    property string startDate: "2022/02/05"
    property string endDate: "2022/02/07"
    property string price: "200"
    property string conditionText: "Perfect"
    property color bikeBg: "#557"

    Image {
        id: bikeImage
        anchors {
            top: parent.top
            left: parent.left
            bottom: parent.bottom
            topMargin: parent.height * 0.1
            leftMargin: parent.height * 0.1
            rightMargin: parent.height * 0.1
            bottomMargin: parent.height * 0.1
        }

        source: bikeUrl
        width: parent.width * 0.3
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
        color: bikeBg
        radius: 4

        Text {
            id: bikeModel
            text: modelName
            font.pixelSize: parent.height * 0.15
            anchors {
                top: parent.top
                topMargin: 12
            }
            color: "#fdfffd"
            font.bold: true
            padding: 12
        }
        ImageTextField {
            id: username
            name: fullName
            colorName: "#222222"
            anchors {
                top: bikeModel.bottom
                left: parent.left
                leftMargin: 12
            }
            heightPx: parent.height * 0.1
        }
        ImageTextField {
            id: plateNumber
            imgUrl: "qrc:/images/stockImages/bike/bikeNumber.png"
            name: plateNumberName
            colorName: "#111111"
            imgHeight: 25
            imgWidth: 80
            anchors {
                top: username.bottom
                topMargin: 12
                left: parent.left
                leftMargin: 12
            }
            heightPx: parent.height * 0.07
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
            heightPx: parent.height * 0.07
        }

        RowInput {
            id: dateStart
            leftTextColor: "#bdb6b6"
            rightTextColor: "#f8f8f8"
            leftText: "Start Date"
            rightText: startDate
            anchors {
                bottom: parent.bottom
                bottomMargin: 10
            }
            fontSize: parent.height * 0.07
        }
        RowInput {
            id: dateEnd
            leftTextColor: "#bfb9b9"
            rightTextColor: "#f8f8f8"
            leftText: "End Date"
            rightText: endDate
            anchors {
                left: dateStart.right
                leftMargin: 20
                bottom: parent.bottom
                bottomMargin: 10
            }
            fontSize: parent.height * 0.07
        }

        Text {
            id: prices
            color: "#000000"
            text: "Rs " + price
            font.pixelSize: parent.height * .15
            anchors {
                right: parent.right
                rightMargin: parent.width * 0.12
                top: parent.top
                topMargin: parent.height * 0.3
            }
        }
        Text {
            id: perDayText
            text: "/Day"
            font.pixelSize: parent.height * 0.09
            anchors {
                left: prices.right
                leftMargin: 5
                bottom: prices.bottom
            }
            color: "#111111"
        }
        BikeCustomButton {
            id: bookNow
            height: parent.height * 0.2
            width: parent.width * 0.25
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
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:640}
}
##^##*/

