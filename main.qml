import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {

    visible: true
    width: 480
    height: 640
    title: qsTr("Tabs")

    property string kekText: "trueKek"

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
            id: page1

        }

        Page2Form {
            id: page2
        }

    }


    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Send Data")

        }
        TabButton {
            text: qsTr("Receive Data")

        }
    }
}
