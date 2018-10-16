import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 480
    height: 640

    header: Label {
        text: "Downloading"
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    ListView {
        id: listView
        x: 10
        y: 10
        width: parent.width - 30
        height: parent.height / 3 * 2
        anchors.left: parent.left
        anchors.leftMargin: 13
        delegate: Item {
            x: 5
            width: 80
            height: 40
            Row {
                id: row1
                spacing: 10
                Text {
                    text: date
                    font.bold: true
                    anchors.verticalCenter: parent.left
                }

                Text {
                    text: recText
                    font.bold: true
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }
        model: ListModel {
            ListElement {
                date: "13.10.18 23:34"
                recText: "Type Textadsfjg"
            }

            ListElement {
                date: "13.10.18 23:34"
                recText: "Type fdagfad"
            }

            ListElement {
                date: "13.10.18 23:34"
                recText: "aqwerxcz"
            }

            ListElement {
                date: "13.10.18 23:35"
                recText: "1234"
            }
        }
    }

    Button {
        id: btnListen
        objectName: btnListen
        x: 20
        y: parent.height - 100
        width: parent.width / 2 - 30
        height: 85
        text: qsTr("Listen...")
        focusPolicy: Qt.WheelFocus


        display: AbstractButton.TextOnly
        font.pointSize: 17
    }

    Button {
        id: btnFindConnect
        objectName: btnFindConnect
        x: parent.width - 20 - btnListen.width
        y: parent.height - 100
        width: btnListen.width
        height: btnListen.height
        text: qsTr("Accept Connection")

        enabled: false
        font.pointSize: 14
    }
}
