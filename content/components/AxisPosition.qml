
import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import "../pages"
import QtQuick.Layouts 6.0

Rectangle {
    id: rectangle4
    color: "#252529"
    anchors.fill: parent
    property alias slider2: slider2
    property alias dial11: dial11
    property alias dial1: dial1
    property alias slider: slider
    property string axisname

    ColumnLayout {
        id: column1
        anchors.fill: parent
        Text {
            id:adjusttext
            width: parent.width*0.4
            Layout.fillWidth: true
            text: "Adjust "+ axisname+" axis positions "
            font.pixelSize: 15
            horizontalAlignment: Text.AlignLeft
            color:"white"
            verticalAlignment: Text.AlignBottom
            leftPadding: 0
            font.hintingPreference: Font.PreferDefaultHinting
            style: Text.Normal
            fontSizeMode: Text.Fit
            minimumPixelSize: 2
        }

        Rectangle {
            id: rectangle5

            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "#252529"

            Column {
                id: column2
                anchors.fill: parent

                Row {
                    id: row1
                    width: parent.width
                    height: parent.height/2

                    AxisPositionText {
                        id: rectangle6
                        color: "#ffffff"
                        anchors.verticalCenter: parent.verticalCenter
                        axisangle: dial1.dialvalue
                        height: parent.height*0.9
                        width: parent.width*0.15
                    }

                    Rectangle {
                        id: rectangle7
                        width: parent.width*0.4
                        height: parent.height
                        color: "#252529"

                        Item {
                            id: item5
                            width: parent.width
                            height: parent.height*0.7

                            CustomDial{id:dial1

                                width: parent.width
                                height: parent.height
                                dialvalue: slider.value
                            }
                        }


                        Rectangle{
                            id: rectangle8
                            width: parent.width
                            height: parent.height*0.3
                            anchors.bottom: parent.bottom
                            color: "#252529"

                            Rectangle {
                                id: rectangle9
                                width: parent.width*0.5
                                height: parent.height*0.6
                                color: "#252529"
                                border.color: "black"
                                border.width: 1
                                radius: 6
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter

                                Text {
                                    id: anglerender
                                    text:dial1.dialvalue||dial1.dialvl2
                                    width: parent.width
                                    height: parent.height
                                    color: "white"
                                    font.pixelSize: 12
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                    minimumPixelSize: 2
                                    fontSizeMode: Text.Fit
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.horizontalCenter: parent.horizontalCenter

                                }
                            }
                        }
                    }

                    Column {
                        id: item7
                        width: parent.width-rectangle6.width-rectangle7.width
                        height: parent.height

                        Row {
                            id: row4
                            width: parent.width
                            height: parent.height/2

                            LeftSlider {

                                id: button
                                width: parent.width*0.2
                                imgsrc: "../images/Left_Arrow.png"
                                height: parent.height*0.5
                                anchors.verticalCenter: parent.verticalCenter
                                Connections {
                                    target: button
                                    onClicked: {
                                        if(button.clicked)

                                        {
                                            slider.decrease()
                                        }

                                    }
                                }
                            }

                            Slider {
                                id: slider

                                value: dial1.dialvl2


                                width: parent.width*0.5
                                anchors.verticalCenter: parent.verticalCenter
                                stepSize: 1
                                to: 110
                                from: -110
                            }
                            LeftSlider {
                                id: button3
                                width: parent.width*0.2
                                height: parent.height*0.5
                                imgsrc: "../images/Right_Arrow.png"
                                anchors.verticalCenter: parent.verticalCenter
                                Connections {
                                    target: button3
                                    onClicked: {
                                        if(button.clicked)

                                        {
                                            slider.increase()
                                        }

                                    }
                                }
                            }
                        }

                        Item {
                            id: item8
                            width: parent.width
                            height: parent.height-row4.height

                            Row {
                                id: row5
                                spacing: 3
                                width: parent.width*0.7
                                height: parent.height*0.8
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter

                                HoverButton{
                                    id:movearm
                                    anchors.verticalCenter: parent.verticalCenter
                                    stepcolor:"#7d00ff"
                                    steptext: "Move Arm"
                                    onClicked: {
                                        console.log(dial1.dialvalue)

                                    }
                                }

                                HoverButton{
                                    id:homebtn
                                    anchors.verticalCenter: parent.verticalCenter
                                    stepcolor:"#889ab9"
                                    steptext: "Home"
                                    Connections {
                                        onClicked: {


                                            console.log("Home button clicked")
                                        }
                                    }

                                }
                            }
                        }
                    }
                }

                Row {
                    id: row3
                    width:parent.width
                    height: parent.height/2
                    AxisPositionText {
                        id: rectangle66
                        color: "#ffffff"
                        anchors.verticalCenter: parent.verticalCenter
                        axisangle: dial11.dialvalue
                        height: parent.height*0.9
                        width: parent.width*0.15
                    }
                    Rectangle {
                        id: rectangle77
                        width: parent.width*0.4
                        height: parent.height
                        color: "#252529"

                        Item {
                            id: item55
                            width: parent.width
                            height: parent.height*0.7

                            CustomDial{id:dial11

                                width: parent.width
                                height: parent.height
                                dialvalue: slider2.value
                            }
                        }


                        Rectangle{
                            id: rectangle88
                            width: parent.width
                            height: parent.height*0.3
                            anchors.bottom: parent.bottom
                            color: "#252529"

                            Rectangle {
                                id: rectangle99
                                width: parent.width*0.5
                                height: parent.height*0.6
                                color: "#252529"
                                border.color: "black"
                                border.width: 1
                                radius: 6
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter

                                Text {
                                    id: anglerender2
                                    text:dial11.dialvalue||dial11.dialvl2
                                    width: parent.width
                                    height: parent.height
                                    color: "white"
                                    font.pixelSize: 12
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                    minimumPixelSize: 2
                                    fontSizeMode: Text.Fit
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.horizontalCenter: parent.horizontalCenter

                                }
                            }
                        }
                    }


                    Column {
                        id: item77
                        width: parent.width-rectangle6.width-rectangle7.width
                        height: parent.height

                        Row {
                            id: row44
                            width: parent.width
                            height: parent.height/2

                            LeftSlider {

                                id: button2
                                width: parent.width*0.2
                                imgsrc: "../images/Left_Arrow.png"
                                height: parent.height*0.5
                                anchors.verticalCenter: parent.verticalCenter
                                Connections {
                                    target: button2
                                    onClicked: {
                                        if(button2.clicked)

                                        {
                                            slider2.decrease()
                                        }

                                    }
                                }
                            }

                            Slider {
                                id: slider2
                                value: dial11.dialvl2
                                width: parent.width*0.5
                                anchors.verticalCenter: parent.verticalCenter
                                stepSize: 1
                                to: 110
                                from: -110
                            }
                            LeftSlider {
                                id: button33
                                width: parent.width*0.2
                                height: parent.height*0.5
                                imgsrc: "../images/Right_Arrow.png"
                                anchors.verticalCenter: parent.verticalCenter
                                Connections {
                                    target: button33
                                    onClicked: {
                                        if(button33.clicked)

                                        {
                                            slider2.increase()
                                        }

                                    }
                                }
                            }
                        }

                        Item {
                            id: item88
                            width: parent.width
                            height: parent.height-row4.height

                            Row {
                                id: row55
                                spacing: 3
                                width: parent.width*0.7
                                height: parent.height*0.8
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.horizontalCenter: parent.horizontalCenter

                                HoverButton{
                                    id:movearm2
                                    anchors.verticalCenter: parent.verticalCenter
                                    stepcolor:"#7d00ff"
                                    steptext: "Move Arm"
                                    onClicked: {
                                        console.log(dial11.dialvalue)

                                    }

                                }

                                HoverButton{
                                    id:homebtn2
                                    anchors.verticalCenter: parent.verticalCenter
                                    stepcolor:"#889ab9"
                                    steptext: "Home"
                                    Connections {
                                        onClicked: {
                                            console.log("Home button clicked")
                                        }
                                    }

                                }

                            }
                        }
                    }
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:320;width:450}
}
##^##*/
