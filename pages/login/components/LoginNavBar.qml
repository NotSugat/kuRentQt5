import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

import QtQuick.Window 2.3

//Sign Up navbar
Rectangle {
    id: signUp
    property string textName: "Sign Up"
    anchors {
        left: parent.left
        right: parent.right
        top: parent.top
        topMargin: 0
    }

    width: parent.width
    height: parent.height / 8
    color: "transparent"

    TextField {
        id: signUpField
        width: parent.width
        height: parent.height
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        text: qsTr("Log In")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.pointSize: 20
        color: "Purple"
        readOnly: true
        background: Rectangle {
            id: borderBottom
            width: parent.width
            height: 2
            anchors.bottom: parent.bottom
            color: "purple"
            //                    anchors.centerIn: parent
        }
    }
}
