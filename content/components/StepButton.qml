import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import QtQuick.Layouts 6.0

Button {
    id: step1button
    height: parent.height
    property int ss1
    width: parent.width
    checkable: true
    autoExclusive: true
    property string steptext
    property var component
    property var sprite
    property var step1B1:page1.slider
    property int slid12
    property int slid11



    background: Rectangle {
        id:outer
        anchors.fill: parent
        color:"#252529"
        IconImage{
            id:iconwaypointshover
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
                source: "../images/rightarrow.svg"
        anchors.rightMargin: 0

        width: parent.width*0.05
        visible: false
       }

        Rectangle{id:iner
            anchors.fill: parent
            border.color: "#8204e4"
            border.width:2
            color: "#273539"

            IconImage{
                id:iconwaypoints
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                source: "../images/rightarrow.svg"
            anchors.rightMargin: 0

            width: parent.width*0.05
           }

            visible: false
        }
    }
    Connections {
        target: step1button
        onHoveredChanged: {if(step1button.hovered){

                         outer.color="#273555"
                iconwaypointshover.visible=true




                    }

            else{
            outer.color="#252529"
                iconwaypointshover.visible=false
            }



                    }
        onCheckedChanged:{
        if(step1button .checked)
            {iner.visible=true}
        else{
        iner.visible=false
        }
        }

    }

    Item {
        id: init
        width: parent.width*0.2
        height: parent.height
    }
    Item {
        id: line
        width: parent.width
        height: parent.height*0.1
        anchors.verticalCenter: parent.verticalCenter
    }
    Item {
        id: item1
        width: parent.width*0.7
        height: parent.height
    }


    Text {
        id: text1

        text: qsTr("Step 1")
        font.pixelSize: 12
        color: "white"

        anchors.right: init.right
        anchors.bottom: line.top
        minimumPixelSize: 2
        fontSizeMode: Text.Fit
        width: parent.width*0.1

    }
    Text {
        id: axisBtext
                text: qsTr("Step B ")
        font.pixelSize: 12
        color: "white"
        anchors.right: item1.right
        anchors.top: line.bottom
        minimumPixelSize: 2
        fontSizeMode: Text.Fit
        width: parent.width*0.1

    }
    Text {
        id:axisBtextValue
        color: "white"
        font.pixelSize: 12

        anchors.left:  item1.right
        anchors.top:  line.bottom
        minimumPixelSize: 2
        fontSizeMode: Text.Fit
        width: parent.width*0.1
        text: slid12+qsTr("\u00B0")

    }
    Text {
        id:axisAtext
        text: qsTr("Axis A ")
        color: "white"
        font.pixelSize: 12

        anchors.right: init.right
        anchors.top:  line.bottom
        minimumPixelSize: 2
        fontSizeMode: Text.Fit
        width: parent.width*0.1

    }
    Text {
        id:axisAtextValue
        color: "white"
        font.pixelSize: 12

        anchors.left:  init.right
        anchors.top:  line.bottom
        minimumPixelSize: 2
        fontSizeMode: Text.Fit
        width: parent.width*0.1
        text: slid11+qsTr("\u00B0")

    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5;height:60.800000000000004;width:102.6}
}
##^##*/
