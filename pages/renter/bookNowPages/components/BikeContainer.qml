import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

RowLayout {
    id: field

    Image{
        idL
    }
    Text {
        id: ownerName
        anchors {
            top: bikeModel.bottom
        }
        text: "Sugat Sujakhu"
        font.pixelSize: 12
        color: lighColor
    }
}


