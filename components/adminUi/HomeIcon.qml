import QtQuick 2.15
import QtQuick.Controls 6.3
import QtQuick.Layouts 1.0


Rectangle{
    id: homeBg
    anchors {

        left: parent.left
        right: parent.right
        leftMargin: 10
        rightMargin: 10
    }

    Image{
        id: home
        source: "images/home.png"
        Layout.maximumHeight: 30
        Layout.preferredHeight: 20

        fillMode: Image.PreserveAspectFit
        horizontalAlignment: Image.AlignHCenter
        verticalAlignment: Image.AlignVCenter

        HoverHandler {
               id: mouse
               acceptedDevices: PointerDevice.Mouse
               cursorShape: Qt.PointingHandCursor
        }







    }

}
