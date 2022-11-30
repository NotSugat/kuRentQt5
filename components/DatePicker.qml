import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.3

Rectangle {
    id: root

    property int month: selectedDate.getMonth()
    property int year: selectedDate.getFullYear()
    property int day: selectedDate.getDate()
    property int weekday: selectedDate.getDay()
    property int daysInMonth: new Date(year, month + 1, 0).getDate()

    property date selectedDate: new Date()

    property int _start_weekday: new Date(year, month, 1).getDay()
    property alias text: dateFinal.text

    // colors properties
    property color bgColor: "#2d0c5c"
    property color textColor: "white"
    property color dayColor: "cyan"
    property color btnColor: "#805bc2"

    implicitWidth: layout.width + 20
    implicitHeight: layout.height + 20
    color: root.bgColor
    radius: 16
    Material.elevation: 20

    ColumnLayout {
        id: layout

        Rectangle {
            id: title
            implicitHeight: 40
            Layout.fillWidth: true
            color: "transparent"

            Text {
                id: dateFinal
                anchors {
                    fill: parent
                    leftMargin: 8
                    topMargin: 12
                }

                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: title.AlignVCenter

                text: selectedDate.toLocaleDateString(Qt.locale(), "dd/MM/yyyy")
                font.pixelSize: 40
                color: root.textColor
            }
        }

        Rectangle {
            color: "transparent"
            implicitHeight: 28
            Layout.fillWidth: true
        }

        Rectangle {
            id: controls
            color: "transparent"
            implicitHeight: 24

            RowLayout {
                anchors.fill: parent
                anchors.leftMargin: 8
                spacing: 16
                Layout.alignment: Qt.AlignHCenter

                //month and year text container
                Text {
                    text: selectedDate.toLocaleDateString(Qt.locale(),
                                                          "MMMM yyyy")
                    font.pixelSize: 16
                    color: root.textColor
                }

                Button {
                    id: monthButton
                    flat: true

                    contentItem: Text {
                        text: "months"
                        color: root.textColor
                    }
                    background: Rectangle {
                        color: root.btnColor
                        radius: 4
                    }
                    MouseArea {
                        id: monthButtonArea
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            monthMenu.open()
                        }
                    }

                    Material.elevation: 2

                    Menu {
                        id: monthMenu

                        Repeater {
                            model: 12
                            MenuItem {

                                text: new Date(2020, index,
                                               1).toLocaleDateString(
                                          Qt.locale(), "MMMM")

                                onTriggered: {
                                    set_month(index)
                                    monthMenu.close()
                                }
                            }
                        }
                        background: Rectangle {
                            implicitWidth: 200
                            color: "#9475cb"
                            border.width: 2 * topWindow.sizeFactor
                        }
                    }
                }

                // 2 button to change month <>
                RowLayout {
                    Layout.alignment: Qt.AlignRight
                    spacing: 8

                    RoundButton {
                        Material.background: 'transparent'
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 40

                        contentItem: Rectangle {

                            color: 'transparent'
                            Text {
                                id: prevMonth
                                text: qsTr("<")
                                anchors {
                                    horizontalCenter: parent.horizontalCenter
                                    verticalCenter: parent.verticalCenter
                                }
                            }
                        }
                        background: Rectangle {
                            color: root.btnColor
                            radius: 40
                        }

                        onClicked: {
                            set_month(month - 1)
                        }
                    }

                    RoundButton {
                        Material.background: 'transparent'
                        Layout.preferredHeight: 40
                        Layout.preferredWidth: 40
                        contentItem: Rectangle {

                            color: 'transparent'
                            Text {
                                id: nextMonth
                                text: qsTr(">")
                                anchors {
                                    horizontalCenter: parent.horizontalCenter
                                    verticalCenter: parent.verticalCenter
                                }
                            }
                        }
                        background: Rectangle {
                            color: root.btnColor
                            radius: 40
                        }
                        onClicked: {
                            set_month(month + 1)
                        }
                    }
                }
            }
        }

        Rectangle {
            color: "transparent"
            implicitHeight: 16
            Layout.fillWidth: true
        }

        Rectangle {
            color: Material.accent
            implicitHeight: 1
            implicitWidth: root.width
            Layout.fillWidth: true
        }

        // Sunday - Saturday row
        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            spacing: 4
            anchors {
                left: parent.left
                leftMargin: 10
            }

            Repeater {
                model: 7
                Rectangle {
                    // just for spacing
                    width: 40
                    height: 40
                    color: "transparent"

                    Text {
                        id: dayName
                        anchors.centerIn: parent
                        Layout.fillWidth: true
                        text: new Date(2020, 0, index - 2).toLocaleDateString(
                                  Qt.locale(), "ddd").slice(0, 1)
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignHCenter
                        color: root.dayColor
                        font.bold: true
                    }
                }
            }
        }

        // calendar grid layout for the dates
        GridLayout {
            id: grid
            columns: 7
            rows: 6
            columnSpacing: 4
            rowSpacing: 4
            anchors {
                left: parent.left
                leftMargin: 10
            }

            Repeater {
                model: 42

                delegate: Rectangle {
                    color: default_color()
                    radius: 20

                    border.width: 1
                    border.color: is_selected(
                                      ) ? Material.accent : "transparent"

                    width: 40
                    height: 40

                    Text {
                        anchors.centerIn: parent
                        text: get_day()
                        color: in_current_month() ? root.textColor : 'gray'
                    }

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onEntered: {
                            cursorShape = Qt.PointingHandCursor
                            color = Material.color(Material.accent,
                                                   Material.Shade200)
                        }
                        onExited: {
                            cursorShape = Qt.ArrowCursor
                            color = default_color()
                        }
                        onClicked: {
                            const _day = get_day()
                            if (!in_current_month()) {
                                if (index < _start_weekday) {
                                    set_month(month - 1)
                                } else {
                                    set_month(month + 1)
                                }
                            }
                            set_day(_day)
                        }
                    }

                    function default_color() {
                        return 'transparent'
                    }

                    function in_current_month() {
                        return index >= _start_weekday
                                && (index - _start_weekday) < daysInMonth
                    }

                    function is_selected() {
                        return day === get_day() && in_current_month()
                    }

                    function get_day() {
                        const this_day = index - _start_weekday + 1
                        if (this_day > daysInMonth) {
                            return this_day - daysInMonth
                        } else if (this_day < 1) {
                            return new Date(year, month, 0).getDate() + this_day
                        } else {
                            return this_day
                        }
                    }
                }
            }
        }
    }

    function set_month(month) {
        const days_in = new Date(year, month + 1, 0).getDate()
        const new_day = Math.min(day, days_in)
        selectedDate = new Date(year, month, new_day)
    }

    function set_day(day) {
        day = Math.min(day, daysInMonth)
        selectedDate = new Date(year, month, day)
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

