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
    property string fname: _currentData.Fname
    property string lname: _currentData.Lname
    property string ownerPic: _currentData.Url
    property string bikePic: _currentData.BikeUrl
    property color bikeDetailsBg: "#353a48"
    property color ownerDetailBg: "#424354"

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
            color: ownerDetailBg
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
                color: "transparent"
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
                    color: "#a2dddd"
                    font.pixelSize: 24
                    font.bold: true
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

                Image {
                    id: ownerImage
                    source: _currentData.Url
                    anchors {
                        centerIn: parent
                    }

                    height: parent.width * 0.8
                    width: parent.width * 0.8
                    fillMode: Image.PreserveAspectCrop
                    z: 1000
                }

                //                Rectangle {
                //                    id: profilePic

                //                    anchors.fill: parent
                //                }

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
                        leftTextColor: "#ffaa00"
                        anchors {
                            top: parent.top
                            topMargin: parent.height * .15
                        }
                        fontSize: parent.height * size
                        leftText: "Name"
                        rightText: _currentData.Fname + " " + _currentData.Lname
                    }
                    RowInput {
                        id: number
                        leftTextColor: "#ffaa00"
                        anchors {
                            top: name.bottom
                            topMargin: parent.height * rowGap
                        }
                        fontSize: parent.height * size

                        leftText: "Phone Number"
                        rightText: _currentData.Number
                    }
                    RowInput {
                        id: gender

                        leftTextColor: "#ffaa00"
                        anchors {
                            top: number.bottom
                            topMargin: parent.height * rowGap
                        }
                        fontSize: parent.height * size
                        leftText: "Gender"
                        rightText: _currentData.Gender
                    }
                    RowInput {
                        id: location
                        leftTextColor: "#ffaa00"
                        anchors {
                            top: gender.bottom
                            topMargin: parent.height * rowGap
                        }
                        fontSize: parent.height * size
                        leftText: "Location"
                        rightText: _currentData.Location
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
            color: bikeDetailsBg
            //            Layout.fillHeight: true
            Layout.preferredWidth: parent.width * 0.6

            Rectangle {
                id: renterTitleContainer
                anchors {
                    left: parent.left
                    right: parent.right
                    top: parent.top
                }
                height: parent.height * 0.15

                width: ownerPart.width
                color: "transparent"
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
                    color: "#aaaa65"
                    font.pixelSize: 24
                    font.bold: true
                    font.family: "Tahoma"
                }
            }

            //--------------owner profile pic contianer------------------------//
            Rectangle {
                id: bikePicContainer

                color: "transparent"

                anchors {
                    top: renterTitleContainer.bottom
                    left: parent.left

                    bottom: parent.bottom
                }
                width: parent.width * .4

                Image {
                    id: renterImage
                    source: _currentData.BikeUrl
                    anchors {
                        centerIn: parent
                    }

                    height: parent.width * 0.8
                    width: parent.width * 0.8
                    fillMode: Image.PreserveAspectCrop
                    z: 1000
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

                color: "transparent"
                RowInput {
                    id: vehicleType
                    leftTextColor: "#ffaa00"
                    anchors {
                        top: parent.top
                        topMargin: parent.height * rowGap
                    }
                    fontSize: parent.height * size
                    leftText: "Vehicle Type"
                    rightText: _currentData.VehicleType
                }
                RowInput {
                    id: plateNumber
                    leftTextColor: "#ffaa00"
                    anchors {
                        top: parent.top
                        topMargin: parent.height * rowGap
                        left: vehicleType.right
                    }
                    fontSize: parent.height * size
                    leftText: "Plate No"
                    rightText: _currentData.NumberPlate
                }
                RowInput {
                    id: modelName
                    leftTextColor: "#ffaa00"
                    anchors {
                        top: vehicleType.bottom
                        topMargin: parent.height * rowGap
                    }
                    fontSize: parent.height * size
                    leftText: "Model"
                    rightText: _currentData.Model
                }
                RowInput {
                    id: pricePerDay
                    leftTextColor: "#ffaa00"
                    anchors {
                        top: vehicleType.bottom
                        topMargin: parent.height * rowGap
                        left: modelName.right
                    }
                    fontSize: parent.height * size
                    leftText: "Price (per day)"
                    rightText: _currentData.Price
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
                    bgColor: "#dddde4"
                    titleColor: "#bbbbbb"
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
                    titleColor: "#bbbbbb"
                    bgColor: "#dddde4"
                    title: "Lease"
                    placeHolderText: "No of Day"
                }

                SubmitBtn {
                    id: bookNowButton
                    anchors {
                        bottom: parent.bottom
                        bottomMargin: parent.height * 0.1
                        horizontalCenter: parent.horizontalCenter
                    }
                    width: parent.width * 0.4
                    height: parent.height * 0.15
                    title: "Book Now"
                    MouseArea {
                        id: mouse
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: if (locationDrop.text
                                           && dayInputField.text) {

                                       bikeRenterDatabase.insertIntoTable(
                                                   fname, lname,
                                                   number.text, gender.text,
                                                   location.text, ownerPic,
                                                   vehicleType.text, modelName.text,
                                                   plateNumber.text, pricePerDay.text,
                                                   locationDrop.text, dayInputField.text,
                                                   bikePic)

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
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/

