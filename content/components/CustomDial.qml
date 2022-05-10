import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: parent.width
    height: parent.height
    border.color: "#ffffff"
    property string degreesym: "\u00B0"
    property int dialvalue:dial.value
    property int dialvl2:dial.value

    Rectangle {
        id: rectangle
        width: parent.width
        height: parent.height
        color: "#252529"

        Dial {
            id: dial
            anchors.top: parent.top
            anchors.topMargin: 10
            height: parent.height*0.7
            width: parent.width*0.7
            stepSize: 1
            anchors.horizontalCenter: parent.horizontalCenter

            value:dialvalue

            to: 110
            from: -110
            background: Rectangle {
                x: dial.width / 2 - width / 2
                y: dial.height / 2 - height / 2
                width: Math.max(64, Math.min(dial.width, dial .height))
                height: width
                color: "#1f1f1f"
                radius: width / 2
                border.color: "#545454"
                opacity: dial.enabled ? 1 : 0.3


            }
        }

        Item {
            id: item1
            width: parent.width*0.4
            height: parent.height*0.2
            anchors.bottom: parent.bottom

            Text {
                id: dialmin
                text: qsTr("Min: -110")
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                minimumPixelSize: 2
                width: parent.width
                height: parent.height
                color: "white"
                fontSizeMode: Text.Fit
                anchors.right: text5.left

            }
            Text {
                id: text5
                text: degreesym


                font.pixelSize: 12
                  fontSizeMode: Text.Fit
                  color: "white"
                minimumPixelSize: 2
               width: parent.width*0.2
               height: parent.height
                  anchors.right: parent.right
            }
        }

        Item {
            id: item2
            width: parent.width*0.62
            height: parent.height*0.2

            anchors.bottom: parent.bottom

            Text {
                id: dialmax
                text: qsTr("Max:110")
                color: "white"
                font.pixelSize: 12
                horizontalAlignment: Text.AlignRight
                minimumPixelSize: 2
                fontSizeMode: Text.Fit
                     width: parent.width*0.4
                     height: parent.height
                  anchors.left: parent.right
            }
            Text {
                id: text3
                text: degreesym
                font.pixelSize: 12
                  fontSizeMode: Text.Fit
                  color: "white"
                minimumPixelSize: 2
               width: parent.width*0.2
               height: parent.height
                  anchors.left: dialmax.right
            }
        }


    }






}

/*##^##
Designer {
    D{i:0;height:160.29999999999998;width:256}
}
##^##*/
