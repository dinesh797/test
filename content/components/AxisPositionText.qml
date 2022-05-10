import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle
    property string axisangle
    property string degreeSymbol: "\u00B0"
    property int borderWidth: 1

    Column {
        id: column
        width: parent.width
        height: parent.height
        Rectangle {
            id: rectangle1
            width: parent.width
            height: parent.height / 2
            color: "#252529"
            Rectangle {
                id: roundCorners
                color: "#1c1c1f"
                radius: 10
                border.width: borderWidth
                anchors.fill: parent
            }
            Rectangle {
                id: squareCorners
                color: "#1c1c1f"
                border.width: borderWidth
                anchors.fill: parent
                anchors.topMargin: 10
            }
            Rectangle {
                id: squareCorners8
                color: "#1c1c1f"        
                anchors.fill: parent
                anchors.leftMargin: 1.1
                anchors.topMargin: 7
                anchors.rightMargin: 1.1
                anchors.bottomMargin: 7
            }
            Text {
                id: text1
                width: parent.width*0.85
                color: "white"
                text: qsTr("Vaccum 1 Cup")
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.horizontalCenter: parent.horizontalCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 20
                fontSizeMode: Text.Fit
                minimumPointSize: 2
            }
        }
        Rectangle {
            id: rectangle2
            width: parent.width
            height: parent.height / 2
            color: "#252529"
            Rectangle {
                id: roundCorners2
                color: "#252529"
                radius: 10
                border.width: borderWidth
                anchors.fill: parent
            }
            Rectangle {
                id: squareCorners2
                color: "#252529"
                border.width: borderWidth
                anchors.fill: parent
                anchors.bottomMargin: 10
            }
            Rectangle {
                id: squareCorners3
                color: "#252529"
                anchors.fill: parent
                anchors.leftMargin: 1.1
                anchors.topMargin: 7
                anchors.rightMargin: 1.1
                anchors.bottomMargin: 7
            }
            Rectangle {
                id: row
                width: parent.width*0.9
               color: "#252529"
               height: parent.height*0.5
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                Item {
                    id: item1
                    width: parent.width**0.8
                    height: parent.height
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter

                    Text {
                        id: text4
                        height: parent.height
                        color: "white"
                        width: parent.width
                        text: axisangle
                        anchors.verticalCenter: parent.verticalCenter
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                    }
                    Text {
                        id: text5
                        height: parent.height
                        color: "white"

                         width: parent.width*0.6
                        text: degreeSymbol
                        anchors.left: text4.right
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignLeft

                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2

                    }
                }
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:1.33;height:134.1;width:57}
}
##^##*/
