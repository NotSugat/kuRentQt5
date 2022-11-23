import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

RowLayout {
    id: field

    property string imgUrl: "qrc:/images/user.png"
    property string name: "value"
    property int imgHeight: 20
    property int imgWidth: 20
    property int leftValue: 12

    Image {
        id: image
        source: imgUrl
        Layout.preferredHeight: imgHeight
        Layout.preferredWidth: imgWidth
        fillMode: Image.PreserveAspectFit
    }
    Text {
        id: ownerName
        anchors {
            left: image.right
            leftMargin: 5
        }

        text: name
        font.pixelSize: 12
        color: lighColor
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

