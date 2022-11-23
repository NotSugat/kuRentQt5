import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../../components"
import "../components"
import "components"

Rectangle {
    id: content
    property color lighColor: "gray"
    color: "#282c34"
    anchors.left: sidebar.right
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom

    Rectangle {
        id: container
        color: "white"
        width: parent.width * .8
        height: parent.height / 5

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

            source: "qrc:/images/stockImages/bike/pulsar150.jpg"
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

            Text {
                id: bikeModel
                text: "Pulsar 150"
                anchors {
                    top: parent.top
                    topMargin: 12
                }

                font.bold: true
                padding: 12
            }
            ImageTextField {
                id: username

                anchors {
                    top: bikeModel.bottom
                    left: parent.left
                    leftMargin: 12
                }
            }
            ImageTextField {
                id: plateNumber
                imgUrl: "qrc:/images/stockImages/bike/bikeNumber.png"
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
                condition: "Perfect"
            }

            RowInput {
                id: dateStart
                rightTextColor: "#000000"
                leftText: "Start Date"
                rightText: "2022/02/05"
                anchors {
                    bottom: parent.bottom
                    bottomMargin: 10
                }
            }
            RowInput {
                id: dateEnd
                rightTextColor: "#000000"
                leftText: "Start Date"
                rightText: "2022/02/05"
                anchors {
                    left: dateStart.right
                    leftMargin: 20
                    bottom: parent.bottom
                    bottomMargin: 10
                }
            }

            Text {
                id: price
                text: "Rs " + "200"
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
                    left: price.right
                    leftMargin: 5
                    bottom: price.bottom
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
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.1;height:480;width:640}
}
##^##*/

