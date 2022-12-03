import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Window 2.3
import "../../../components"
import "../components"
import "components"
import "../../renter/components"
import QtQuick.Dialogs 1.1
import io.qt.examples.bikemodel 1.0

Rectangle {
    id: bookNowPage
    property color bgColor: "#282c3f"
    property real topValue: .06
    property real rowGap: .045
    property real size: .06
    property int containerheight: content.height * 0.4
    property bool isVisible: false
    property int head1: content.height * 0.5
    property int h2: content.height * 0.1
    property int h3: content.height * 0.1
    property int priceInTotal: 100

    color: "#262a33"

    width: 1920
    height: 1080
    anchors.fill: parent
    RowLayout {
        id: content
        width: bookNowPage.width * 0.8
        anchors {
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }

        height: parent.height * 0.4

        Rectangle {
            id: ownerContainer
            color: "red"
            anchors {
                top: parent.top
                bottom: parent.bottom
            }

            Layout.fillWidth: true

            Rectangle {
                id: titleText
                anchors {
                    left: parent.left
                    right: parent.right
                    top: parent.top
                }
                height: parent.height * 0.15

                width: ownerPart.width
                color: "teal"
                Text {
                    id: profileText
                    text: qsTr("Owner Details")
                    padding: 12
                    anchors {
                        top: parent.top
                        topMargin: parent.height * 0.05
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    color: "white"
                    font.pixelSize: 24
                    font.family: "Tahoma"
                }
            }

            //--------------owner profile pic contianer------------------------//
            Rectangle {
                id: profileContainer

                color: "transparent"

                anchors {
                    top: titleText.bottom
                    left: parent.left

                    bottom: parent.bottom
                }
                width: parent.width * .4

                Rectangle {
                    id: profilePic

                    anchors.fill: parent
                }

                // owner details text containers----------------
                Rectangle {
                    id: profileTextContainer
                    anchors {
                        left: profileContainer.right
                        top: parent.top
                        bottom: parent.bottom
                        right: content.right
                    }

                    color: "gray"

                    RowInput {
                        id: name
                        anchors {
                            top: parent.top
                            topMargin: parent.height * rowGap
                        }
                        fontSize: parent.height * size
                        leftText: "Name"
                        rightText: "Hello world"
                    }
                    RowInput {
                        id: number
                        anchors {
                            top: name.bottom
                            topMargin: parent.height * rowGap
                        }
                        fontSize: parent.height * size

                        leftText: "Phone Number"
                        rightText: "913274189"
                    }
                    RowInput {
                        id: gender
                        anchors {
                            top: number.bottom
                            topMargin: parent.height * rowGap
                        }
                        fontSize: parent.height * size
                        leftText: "Gender"
                        rightText: "male"
                    }
                    RowInput {
                        id: location
                        anchors {
                            top: gender.bottom
                            topMargin: parent.height * rowGap
                        }
                        fontSize: parent.height * size
                        leftText: "Location"
                        rightText: "fasdjhfsd"
                    }
                }
            }
        }
        Rectangle {
            id: bikeDetails
            anchors {
                top: parent.top
                bottom: parent.bottom
            }
            //            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                id: renterTitleContainer
                anchors {
                    left: parent.left
                    right: parent.right
                    top: parent.top
                }
                height: parent.height * 0.15

                width: ownerPart.width
                color: "teal"
                Text {
                    id: renterTitleText
                    text: qsTr("Renting Details")
                    padding: 12
                    anchors {
                        top: parent.top
                        topMargin: parent.height * 0.05
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                    color: "white"
                    font.pixelSize: 24
                    font.family: "Tahoma"
                }
            }

            //--------------owner profile pic contianer------------------------//
            Rectangle {
                id: bikePicContainer

                color: "blue"

                anchors {
                    top: renterTitleContainer.bottom
                    left: parent.left

                    bottom: parent.bottom
                }
                width: parent.width * .4

                Rectangle {
                    id: bikePic

                    anchors {
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom
                    }
                }
            }

            //----------renter details text fields------------//
            Rectangle {
                id: renterDetailContianer
                anchors {
                    left: bikePicContainer.right
                    top: renterTitleContainer.bottom
                    bottom: parent.bottom
                    right: parent.right
                }

                color: "gray"
                RowInput {
                    id: vehicleType
                    anchors {
                        top: parent.top
                        topMargin: parent.height * rowGap
                    }
                    fontSize: parent.height * size
                    leftText: "Vehicle Type"
                    rightText: "Scooter"
                }
                RowInput {
                    id: plateNumber
                    anchors {
                        top: parent.top
                        topMargin: parent.height * rowGap
                        left: vehicleType.right
                    }
                    fontSize: parent.height * size
                    leftText: "Plate No"
                    rightText: "123"
                }
                RowInput {
                    id: modelName
                    anchors {
                        top: vehicleType.bottom
                        topMargin: parent.height * rowGap
                    }
                    fontSize: parent.height * size
                    leftText: "Model"
                    rightText: "Hello"
                }
                RowInput {
                    id: pricePerDay
                    anchors {
                        top: vehicleType.bottom
                        topMargin: parent.height * rowGap
                        left: modelName.right
                    }
                    fontSize: parent.height * size
                    leftText: "Price"
                    rightText: "500"
                }

                InputText {
                    id: locationDrop
                    anchors {
                        top: modelName.bottom
                        topMargin: parent.height * rowGap
                        left: parent.left
                        leftMargin: 24
                    }
                    fontSize: parent.height * size
                    width: parent.width * 0.5
                    height: parent.height * 0.1
                }

                //----------------day and price picker----------//
                InputText {
                    id: dayInputField
                    anchors {
                        top: modelName.bottom
                        topMargin: parent.height * rowGap
                        left: locationDrop.right
                        leftMargin: 24
                    }
                    fontSize: parent.height * size
                    width: parent.width * 0.3
                    height: parent.height * 0.1
                    title: "Lease"
                    placeHolderText: "No of Day"
                }

                //                PriceField {
                //                    id: price
                //                    anchors {
                //                        top: dayInputField.bottom
                //                        topMargin: parent.height * rowGap
                //                        left: parent.left
                //                        leftMargin: 24
                //                    }
                //                    width: parent.width * 0.5
                //                    height: parent.height * 0.1
                //                    title: "Total Price"
                //                    placeHolderText: "Rs" + parseInt(
                //                                         pricePerDay.text) * parseInt(
                //                                         dayInputField.text)
                //                    fieldText: dayInputField.text ? priceInTotal : ""
                //                }
                //                Text {
                //                    id: textPrice
                //                    anchors {
                //                        top: dayInputField.bottom
                //                        topMargin: parent.height * rowGap
                //                        left: parent.left
                //                        leftMargin: 24
                //                    }
                //                    text: "Rs " + priceInTotal
                //                }
                CustomButton {
                    id: bookNowButton
                    anchors {
                        bottom: parent.bottom
                        bottomMargin: 16
                        horizontalCenter: parent.horizontalCenter
                    }
                    width: parent.width * 0.4
                    height: parent.height * 0.1
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}
}
##^##*/

