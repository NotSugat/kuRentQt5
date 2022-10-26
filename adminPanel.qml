import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.0
import QtQuick.Window 2.3
import "components"

Window {
    id: mainWindow
    width: 1280
    height: 720
    visible: true
    color: "#0d0736"
    title: qsTr("Admin Panel")

    Sidebar {
        id: sidebar
    }

    //end of the col layout

    //dashbaord header
    Header {
        id: header
    }

    // main contain
    Rectangle {
        id: mainContent
        color: "purple"
        anchors {
            top: header.bottom
            left: sidebar.right
            right: parent.right
            bottom: parent.bottom
        }

        GridLayout {
            id: dashboardItem
            columns: 3
            rows: 2
            columnSpacing: 10
            rowSpacing: 10

            height: mainWindow.height * .70

            //            anchors.fill: parent
            anchors {
                top: mainContent.top
                left: parent.left
                right: parent.right
                topMargin: 20
                leftMargin: 20
                rightMargin: 20
            }
            // registered user
            Rectangle {
                id: registeredUser
                color: "white"
                Layout.fillWidth: true
                Layout.fillHeight: true
                radius: 20

                ColumnLayout {
                    id: columnLayout
                    spacing: 50
                    anchors {
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }

                    TextField {
                        text: qsTr("Registered User")
                        readOnly: true
                        font.pointSize: 20
                        font.bold: true

                        anchors {
                            top: parent.top
                            left: parent.left
                            right: parent.right
                            leftMargin: parent.width * .25
                            topMargin: 30
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: noOfRegisteredUser
                        text: qsTr("10")
                        readOnly: true
                        font.pointSize: 30

                        anchors {
                            left: parent.left
                            leftMargin: parent.width * .4
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: visitRegister
                        text: qsTr("View Detail>>")
                        readOnly: true
                        font.pointSize: 15

                        anchors {
                            bottom: parent.bottom
                            left: parent.left
                            leftMargin: parent.width * .32
                        }

                        background: Rectangle {
                            border.width: 0
                        }

                        color: registerHover.hovered ? "#0e42eb" : "black"
                    }
                }
            }

            //categories card
            Rectangle {
                id: vehicleCategories
                color: "white"
                Layout.fillWidth: true
                Layout.fillHeight: true
                radius: 20

                ColumnLayout {
                    id: columnVehicleCategories
                    spacing: 50
                    anchors {
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }

                    TextField {
                        text: qsTr("Vehicle Categories")
                        readOnly: true
                        font.pointSize: 20
                        font.bold: true

                        anchors {
                            top: parent.top
                            left: parent.left
                            right: parent.right
                            leftMargin: parent.width * .25
                            topMargin: 30
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: noOfVehicleCategories
                        text: qsTr("10")
                        readOnly: true
                        font.pointSize: 30

                        anchors {
                            left: parent.left
                            leftMargin: parent.width * .4
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: visitVehicleCategories
                        text: qsTr("View Detail>>")
                        readOnly: true
                        font.pointSize: 15

                        anchors {
                            bottom: parent.bottom
                            left: parent.left
                            leftMargin: parent.width * .32
                        }

                        background: Rectangle {
                            border.width: 0
                        }

                        // ---hover baki
                        color: vehicleCategoriesHover.hovered ? "#0e42eb" : "black"
                    }
                }
            }
            //car Variant
            Rectangle {
                id: carVariant
                color: "white"
                Layout.fillWidth: true
                Layout.fillHeight: true
                radius: 20

                ColumnLayout {
                    id: columnCarVariant
                    spacing: 50
                    anchors {
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }

                    TextField {
                        text: qsTr("Vehicle Variant")
                        readOnly: true
                        font.pointSize: 20
                        font.bold: true

                        anchors {
                            top: parent.top
                            left: parent.left
                            right: parent.right
                            leftMargin: parent.width * .25
                            topMargin: 30
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: noOfCarVariant
                        text: qsTr("25")
                        readOnly: true
                        font.pointSize: 30

                        anchors {
                            left: parent.left
                            leftMargin: parent.width * .4
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: visitCarVariant
                        text: qsTr("View Detail>>")
                        readOnly: true
                        font.pointSize: 15

                        anchors {
                            bottom: parent.bottom
                            left: parent.left
                            leftMargin: parent.width * .32
                        }

                        background: Rectangle {
                            border.width: 0
                        }

                        color: carVariantHover.hovered ? "#0e42eb" : "black"
                    }
                }
            }

            //carAvailable
            Rectangle {
                id: carAvailable
                color: "white"
                Layout.fillWidth: true
                Layout.fillHeight: true
                radius: 20

                ColumnLayout {
                    id: columnCarAvailable
                    spacing: 50
                    anchors {
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }

                    TextField {
                        text: qsTr("Vehicle Available")
                        readOnly: true
                        font.pointSize: 20
                        font.bold: true

                        anchors {
                            top: parent.top
                            left: parent.left
                            right: parent.right
                            leftMargin: parent.width * .25
                            topMargin: 30
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: noOfCarAvailable
                        text: qsTr("7")
                        readOnly: true
                        font.pointSize: 30

                        anchors {
                            left: parent.left
                            leftMargin: parent.width * .4
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: visitCarAvailable
                        text: qsTr("View Detail>>")
                        readOnly: true
                        font.pointSize: 15

                        anchors {
                            bottom: parent.bottom
                            left: parent.left
                            leftMargin: parent.width * .32
                        }

                        background: Rectangle {
                            border.width: 0
                        }

                        color: carAvailableHover.hovered ? "#0e42eb" : "black"
                    }
                }
            }

            //Reservation
            Rectangle {
                id: reservation
                color: "white"
                Layout.fillWidth: true
                Layout.fillHeight: true
                radius: 20

                ColumnLayout {
                    id: columnReservation
                    spacing: 50
                    anchors {
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }

                    TextField {
                        text: qsTr("Reservation")
                        readOnly: true
                        font.pointSize: 20
                        font.bold: true

                        anchors {
                            top: parent.top
                            left: parent.left
                            right: parent.right
                            leftMargin: parent.width * .25
                            topMargin: 30
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: noOfReservation
                        text: qsTr("20")
                        readOnly: true
                        font.pointSize: 30

                        anchors {
                            left: parent.left
                            leftMargin: parent.width * .4
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: visitReservation
                        text: qsTr("View Detail>>")
                        readOnly: true
                        font.pointSize: 15

                        anchors {
                            bottom: parent.bottom
                            left: parent.left
                            leftMargin: parent.width * .32
                        }

                        background: Rectangle {
                            border.width: 0
                        }

                        color: reservationHover.hovered ? "#0e42eb" : "black"
                    }
                }
            }

            // New Booking
            Rectangle {
                id: newBooking
                color: "white"
                Layout.fillWidth: true
                Layout.fillHeight: true
                radius: 20

                ColumnLayout {
                    id: columnNewBooking
                    spacing: 50
                    anchors {
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }

                    TextField {
                        text: qsTr("New Booking")
                        readOnly: true
                        font.pointSize: 20
                        font.bold: true

                        anchors {
                            top: parent.top
                            left: parent.left
                            right: parent.right
                            leftMargin: parent.width * .25
                            topMargin: 30
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: noOfNewBooking
                        text: qsTr("5")
                        readOnly: true
                        font.pointSize: 30

                        anchors {
                            left: parent.left
                            leftMargin: parent.width * .4
                        }

                        background: Rectangle {
                            border.width: 0
                        }
                    }

                    TextField {
                        id: visitNewBooking
                        text: qsTr("View Detail>>")
                        readOnly: true
                        font.pointSize: 15

                        anchors {
                            bottom: parent.bottom
                            left: parent.left
                            leftMargin: parent.width * .32
                        }

                        background: Rectangle {
                            border.width: 0
                        }

                        color: newBookingHover.hovered ? "#0e42eb" : "black"
                    }
                }
            }
        }
    }

    //    // content
    //    Rectangle {
    //        id: content
    //        anchors{
    //            left: sidebar.right
    //            right: parent.right
    //        }

    //        TextField{

    //        }
    //    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/

