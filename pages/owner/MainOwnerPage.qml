import QtQuick 2.5
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import "../../components"
import "components"
import QtQuick.Layouts 1.3

Window {
    width: 1920
    height: 1080
    visible: true
    title: qsTr("Owner Window")

    //--------------------------------StatusBar start-------------------//
    //    Rectangle {
    //        id: statusBar

    //        width: parent.width
    //        height: parent.width / 45
    //        color: "red"

    //        //right Side
    //        Rectangle {
    //            id: rightNav
    //            anchors {
    //                top: parent.top
    //                right: parent.right
    //            }

    //            width: parent.width / 10
    //            height: parent.height

    //            ProfileLogo {
    //                id: profile
    //                anchors {
    //                    left: parent.left

    //                    verticalCenter: statusBar.verticalCenter
    //                }
    //            }

    //            Text {
    //                id: signOut
    //                text: "Sign Out"
    //                height: parent.height

    //                anchors {
    //                    left: profile.right
    //                    leftMargin: 10
    //                }
    //                verticalAlignment: Text.AlignVCenter

    //                MouseArea {
    //                    id: signOutBtn
    //                    anchors.fill: parent
    //                    hoverEnabled: true
    //                    onClicked: mainStackView.push("SignUp.qml")
    //                }
    //                color: signOutBtn.containsMouse ? "green" : "black"
    //            }
    //        }
    //    }

    //-------------------------- sidebar-----------------------------//
    Loader {
        id: contentLoader
        anchors.fill: parent
        source: "OwnerStackView.qml"
    }
}
