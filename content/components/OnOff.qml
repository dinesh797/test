import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import QtQuick.Layouts 6.0


Button {
    id: button
    anchors.verticalCenter: text2.verticalCenter
    anchors.left: text2.right
    checkable: true
    checked: true
    width: parent.width*0.065

    background: Rectangle {
           color: "#1c1c1f"
           anchors.fill: parent


                  radius: 10
              }
    IconImage {
        id: custom_icon
        anchors.fill: parent
        source:"../images/on(1).png"



    }

    Connections {
        target: button
        onCheckedChanged:{
            if(button.checked){
                custom_icon.source="../images/on(1).png"
            }
            else{
                custom_icon.source="../images/off (1).png"
            }
        }
    }


}
