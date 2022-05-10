import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import QtQuick.Layouts 6.0

Rectangle {
    id: programrobotsettings
    color: "#252529"


    Text {
        id: text1
        width: parent.width
        verticalAlignment: Text.AlignVCenter
        color: "white"

        text: qsTr("RL2 Robot Settings")
        font.pixelSize: 15
        fontSizeMode: Text.Fit
        minimumPixelSize: 2
    }

    Item {
        id: row1
        x: 0
        y: 14
        width: parent.width
        height: parent.height*0.45
        anchors.top: text1.bottom

        Text {
            id: text2
            width: parent.width**0.7
            color: "white"

            text: qsTr("Vaccum 1 Cup")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2

        }

        OnOff {
            id: button
                width: parent.width*0.060

            checkable: true
            checked: true
        }

        Item {
            id: item5
            width: parent.width*0.5
            height: parent.height

            Text {
                id: text3
                text: qsTr("Double Blank Detection")
                color: "white"
                anchors.verticalCenter: parent.verticalCenter
                font.pixelSize: 15
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                minimumPixelSize: 2

                anchors.right: item5.right
                width: parent.width**0.85
            }
        }
        OnOff{
            id:button3
            anchors.verticalCenter: parent.verticalCenter
             width: parent.width*0.060
            anchors.left: item5.right
            checkable: true
            checked: true
        }

    }

    Item {
        id: item7
        x: 0
        y: 224
        width: parent.width
        height: parent.height-text1.height-row1.height
        anchors.top: row1.bottom
        Text {
            id: text4
            width: parent.width**0.7
            text: qsTr("Vaccum 1 Cup")
            color: "white"
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 15
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }

        Item {
            id: item8
            width: parent.width*0.5
            height: parent.height

            Text {
                id: text8
                width: parent.width**0.85
                color: "white"
                text: qsTr("Double Blank Detection")
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: item8.right
                font.pixelSize: 15
                verticalAlignment: Text.AlignVCenter
                fontSizeMode: Text.Fit
                minimumPixelSize: 2
            }

        }

        OnOff {
            id: button2
            x: 0
            y: 0
              width: parent.width*0.060
            anchors.verticalCenter: text4.verticalCenter
            anchors.left: text4.right
            checkable: true
            checked:true
        }

        OnOff {
            id: button9
            x: 428
            y: 34
             width: parent.width*0.060
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: item8.right
            checkable: true
            checked:true
        }
    }
}

/*##^##
Designer {
    D{i:0;height:170;width:602.37}
}
##^##*/
