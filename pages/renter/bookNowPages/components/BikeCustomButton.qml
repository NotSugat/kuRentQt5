import QtQuick 2.9
import QtQuick.Controls 2.5

Button {
    id: button

    // Custom Properties
    property color colorDefault: "#4891d9"
    property color colorMouseOver: "#55AAFF"
    property color colorPressed: "#3F7EBD"

    property string title: ""

    QtObject {
        id: internal

        property var dynamicColor: if (button.down) {
                                       button.down ? colorPressed : colorDefault
                                   } else {
                                       button.hovered ? colorMouseOver : colorDefault
                                   }
    }
    text: qsTr(button.title)
    contentItem: Item {
        Text {
            id: name
            text: button.text
            font: button.font
            color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    background: Rectangle {
        color: internal.dynamicColor
        radius: 4
    }
    //    onClicked:
    onClicked: afterClicked()

    function afterClicked() {
        _currentData.setCurrentData(model.Fname, model.Lname,
                                    model.PhoneNumber, model.Gender,
                                    model.Address, model.OwnerUrl,
                                    model.VehicleType, model.PlateNumber,
                                    model.BikeModel, model.Price, model.Url)
        bookStackView.push("qrc:/pages/renter/bookNowPages/FormPage.qml")
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:40;width:200}
}
##^##*/
