import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.3
import "components"
import io.qt.examples.bikemodel 1.0

Window {
    id: mainWindow
    width: 1920
    height: 1080
    visible: true
    title: qsTr("KuRent Move Freely")

    ListView {
        anchors {
            fill: parent
        }

        spacing: 20

        model: SqlBikeModel {}

        delegate: Text {
            id: name
            text: qsTr(
                      model.Fname + " " + model.Lname + " " + model.PlateNumber)
        }
    }
    //    TableView {
    //        id: tableView
    //        anchors.top: parent.top
    //        anchors.left: parent.left
    //        anchors.right: parent.right
    //        anchors.bottom: parent.bottom
    //        anchors.margins: 5

    //        TableViewColumn {
    //            role: "fname"
    //            title: "First Name"
    //        }
    //        TableViewColumn {
    //            role: "sname"
    //            title: "Last name"
    //        }
    //        TableViewColumn {
    //            role: "nik"
    //            title: "Nik name"
    //        }

    //        model: _model

    //        // Setting lines in TableView to intercept mouse left click
    //        //        rowDelegate: Rectangle {
    //        //            anchors.fill: parent
    //        //            color: styleData.selected ? 'skyblue' : (styleData.alternate ? 'whitesmoke' : 'white')
    //        //            MouseArea {
    //        //                anchors.fill: parent
    //        //                acceptedButtons: Qt.RightButton | Qt.LeftButton
    //        //                onClicked: {
    //        //                    tableView.selection.clear()
    //        //                    tableView.selection.select(styleData.row)
    //        //                    tableView.currentRow = styleData.row
    //        //                    tableView.focus = true

    //        //                    switch (mouse.button) {
    //        //                    case Qt.RightButton:
    //        //                        contextMenu.popup() // Call the context menu
    //        //                        break
    //        //                    default:
    //        //                        break
    //        //                    }
    //        //                }
    //        //            }
    //        //        }
    //    }
}
