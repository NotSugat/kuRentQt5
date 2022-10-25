import QtQuick 2.15
import QtQuick.Controls 2.5

Rectangle{
    id: signUp
    anchors{
        left:mainWindow.left
        right: mainWindow.right
        top: mainWindow.top
        topMargin: 30


    }


    width:parent.width
    height: parent.height / 12



    TextField{
        id: signUpField
        width: parent.width / 5
        height: parent.height
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.leftMargin: 50
        anchors.rightMargin: 50
        text: qsTr("Sign Up")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
        font.pointSize: 20
        color: "Purple"

        background: Rectangle{
            id:borderBottom
            width: parent.width
            height: 2
            anchors.bottom: parent.bottom
            color: "purple"
            //                    anchors.centerIn: parent


        }
    }
}
