import QtQuick 2.5

Rectangle {
    id: backgroundImage
    height:40
    width: 40


    color:"gray"
    radius: 40
    Image {
        id:userLogo
        height: statusBar.height / 1.75
        anchors.centerIn: parent

        source: "qrc:/images/user.png"
        fillMode: Image.PreserveAspectFit


    }

}
