import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Button {
    id: button
    property int heightBtn: 40
    property int widthBtn: 120
    property string imgSrc: ""
    property string btnText: "Button"
    property string page: ""


    highlighted: false

    flat:true


    contentItem: Rectangle{
        anchors{
            left:parent.left
            leftMargin: 20
            horizontalCenter: button.horizontalCenter
        }

        Image{
            id: btnImg
            anchors{
                left:parent.left
                leftMargin: 10
                verticalCenter: parent.verticalCenter
            }


            source: button.imgSrc
            fillMode: Image.PreserveAspectFit
            width: 20

        }

        Text {
            id: buttonText
            anchors{

                left: btnImg.right
                leftMargin: 10
                verticalCenter: parent.verticalCenter

            }


            text: qsTr(button.btnText)


        }

            color: "transparent"


    }
    background: Rectangle{
        radius: 20

        color: button.hovered ? "#e8e4e3" : "white"
    }
    onClicked: stackView.push(button.page)



}

/*##^##
Designer {
    D{i:0;formeditorZoom:4}
}
##^##*/
