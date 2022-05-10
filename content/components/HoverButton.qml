import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import QtQuick.Layouts 6.0

Button {
    id: addstep
    property string steptext
    property color stepcolor
    property int radiuso
      property int radiusi


    width: parent.width*0.5
    height: parent.height*0.5

    Text {
        id: text1
        width: parent.width*0.55
        verticalAlignment: Text.AlignVCenter
        anchors.horizontalCenter: parent.horizontalCenter
        color:"white"
        text: steptext
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
        horizontalAlignment: Text.AlignHCenter
        fontSizeMode: Text.Fit
        minimumPixelSize: 2
    }

    background: Rectangle {
        id:outer
        anchors.fill: parent
        color:stepcolor
        radius:radiuso


        Rectangle{id:iner
            anchors.fill: parent
            border.color: "#8204e4"
            border.width:2
            color:"#1277ee"
            visible: false
            radius: radiusi
        }
    }

    Connections {
        target: addstep
        onPressedChanged:{if (addstep.pressed){
      iner.visible=true}
            else{iner.visible=false}
        }

        onHoveredChanged: {if(addstep.hovered){

                         outer.color="#4286fb"
                    }

            else{
            outer.color=stepcolor
            }
                    }
    }
}

/*##^##
Designer {
    D{i:0;height:80;width:240}
}
##^##*/
