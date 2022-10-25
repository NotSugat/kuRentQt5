import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Window 2.3
import QtQuick.Layouts 1.3
import "components/signupUi"

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Sign Up Test")

    Rectangle {
        id: loginContainer
        width: parent.width / 2
        height: parent.height / 2
        anchors.centerIn: parent

        SignUpNavbar {
            id: header
        }
        InputText {}
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/

