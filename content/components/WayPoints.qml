import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import "../pages"
import QtQuick.Layouts 6.0


Rectangle {
    id: rectangle2
    width: parent.width*0.3
    color:"#252529"
    border.color: "#ffffff"


    property string waytext
    property var component
    property var sprite

    Column {
        id: column1
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        height: parent.height*0.95
        width: parent.width*0.95
        spacing:2

        Text {
            id: waypointstext
            width: parent.width
            text: waytext
            color: "white"
            font.pixelSize: 13
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2

        }

        StepButton{
            id:stepbutton1
            slid12: page1.item.dial11.dialvl2
            slid11: page1.item.dial1.dialvalue


            width: parent.width
            height: parent.height*0.2
            Connections {
                target: stepbutton1
                onClicked: {
                   st.state="page1"

                }
            }

        }
        StepButton {
            id: stepbutton2

            width: parent.width
            height: parent.height*0.2
            visible: false
            slid12:page2.item.dial11.dialvl2
            slid11: page2.item.dial1.dialvalue
            Connections {
                target: stepbutton2
                onClicked: {
                   st.state="page2"

                }
            }
        }
        StepButton {
            id: stepbutton3

            width: parent.width
            height: parent.height*0.2
            visible: false
            slid12:page3.item.dial11.dialvl2
            slid11: page3.item.dial1.dialvalue
            Connections {
                target: stepbutton3
                onClicked: {
                   st.state="page3"

                }
            }
        }

        Item {
            id: item5
            width: parent.width
            height: parent.height*0.3

            Row {
                id: row1
                spacing: 2
                width: parent.width*0.7
                height: parent.height
                anchors.horizontalCenter: parent.horizontalCenter
                HoverButton{
                    id:addstep
                    stepcolor:"#7d00ff"
                    steptext: "Add Step"

                    Connections {
                        target: addstep
                        onClicked: {

                            if(stepbutton1.visible==true)

                            {
                                if(stepbutton2.visible==true)

                                {
                                    stepbutton3.visible=true
                                    page3.active=true
                                }
                                if(stepbutton1.visible==true)
                                {
                                page1.active=true
                                }

                                stepbutton2.visible=true
                                page2.active=true

                            }
                        }
                    }
                }
                HoverButton{
                    id:deletestep
                    steptext: "Delete Step"
                    stepcolor:"#de004e"

                    Connections {
                        target: deletestep
                        onClicked: {

                            if(stepbutton1.visible==true)

                            {
                                if(stepbutton3.visible==false)

                                {
                                    stepbutton2.visible=false
                                    page2.active=false

                                }
                                if(stepbutton2.visible==false && stepbutton1.checked==true)
                                {
                                page1.active=false
                                }

                                stepbutton3.visible=false
                                  page3.active=false
                                stepbutton1.checked=false
                                st.state="page4"
                           }
                        }
                    }
                }
            }
        }
    }
}
