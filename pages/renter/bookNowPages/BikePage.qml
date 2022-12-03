import QtQuick 2.9
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "../../../components"
import "../components"
import "components"
import io.qt.examples.bikemodel 1.0

Rectangle {
    id: content
    property color lighColor: "gray"
    color: "#262a33" //262a33
    anchors.left: sidebar.right
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.bottom: parent.bottom

    Rectangle {
        id: toolbar
        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
        }
        color: "#1c1d20"
        height: parent.height * 0.05
        Text {
            id: titleText
            text: qsTr("Choose a Vehicle Type")
            anchors {
                verticalCenter: parent.verticalCenter
                left: parent.left
                leftMargin: parent.width * 0.04
            }
            font.pixelSize: content.height * 0.03
            font.bold: true
            color: "white"
        }
    }

    ListView {
        id: bikeList
        anchors {
            top: toolbar.bottom
            topMargin: parent.height * 0.07
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        spacing: parent.height * 0.02

        model: SqlBikeModel {}
        delegate: BikeContainer {

            id: test1
            bikeBg: "#467"
            anchors {
                horizontalCenter: parent.horizontalCenter
            }

            bikeUrl: model.Url
            fullName: model.Fname + " " + model.Lname
            modelName: model.BikeModel
            plateNumberName: model.PlateNumber
            startDate: model.StartDate
            endDate: model.EndDate
            price: model.Price
            conditionText: model.Condition


            width: bikeList.width * 0.5
            height: bikeList.height / 4
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.1;height:480;width:640}
}
##^##*/

