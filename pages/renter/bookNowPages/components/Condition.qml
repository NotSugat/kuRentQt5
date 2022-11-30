import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

RowLayout {
    id: field

    property string condition: "Perfect"

    property int leftValue: 12

    property var dynamicColor: if (condition === "Perfect") {
                                   "green"
                               } else if (condition === "Good") {
                                   "lightgreen"
                               } else if (condition === "Fine") {
                                   "#dafeda"
                               } else {
                                   "yellow"
                               }

    Rectangle {
        id: circle

        Layout.preferredHeight: 20
        Layout.preferredWidth: 20
        color: dynamicColor
        radius: 20
    }
    Text {
        id: ownerName
        anchors {
            left: circle.right
            leftMargin: 5
        }

        text: condition
        font.pixelSize: 12
        color: lighColor
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.9;height:480;width:640}
}
##^##*/

