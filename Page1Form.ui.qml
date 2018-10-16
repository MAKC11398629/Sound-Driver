import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id: page
    width: 480
    height: 640

    header: Label {
        text: qsTr("Uploading")
        font.capitalization: Font.AllUppercase
        font.family: "Verdana"
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    property string typedText: textEdit.text
    TextEdit {

        id: textEdit
        objectName: textEdit
        x: 10
        y: 10
        width: parent.width - 30
        height: parent.height / 3 * 2
        text: "type here..."

        topPadding: -1
        font.family: "Arial"
        anchors.left: parent.left
        anchors.leftMargin: 25
        textFormat: Text.AutoText
        font.pixelSize: 19

        onTextChanged: typedText = textEdit.text

    }

    Button {
        id: btnSend
        objectName: btnSend
        x: 20
        y: parent.height - 100
        width: parent.width / 2 - 30
        height: 85
        text: qsTr("Send Text")
        enabled: textEdit.text !== "" ? true : false
        onPressed: textEdit.text = ""
    }

    Button {
        id: btnClearText
        objectName: btnClearText
        x: parent.width - 20 - btnSend.width
        y: parent.height - 100
        width: btnSend.width
        height: btnSend.height
        text: qsTr("Clear textbox")

        onClicked: textEdit.text = ""
    }



}
