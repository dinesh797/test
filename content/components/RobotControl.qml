import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import QtQuick.Layouts 6.0


Rectangle {
    id: rectangle3
    width: parent.width*0.2
    color: "#ffffff"
    property alias button4: button4
    property alias button3: button3
    property alias button1: button1
    property alias button: button

    property string robottext
    Column{

        height: parent.height*0.95
        width: parent.width


        Text {
            id: rr1robotcontrol
            width: parent.width

            Layout.fillWidth: true
            text:robottext
            font.pixelSize: 15

            color:"white"
            verticalAlignment: Text.AlignVCenter
            fontSizeMode: Text.Fit
            minimumPixelSize: 2

        }

        Rectangle {
            id: item7
            width: parent.width
            height: parent.height
            color:"#252529"

            Image {
                id: arm
                height: parent.height*0.85

                width: parent.width
                antialiasing: true
                source: "../images/arm.svg"
                anchors.horizontalCenter: parent.horizontalCenter
                fillMode: Image.PreserveAspectFit



            }
            Button {
                id: button
                x: parent.width*0.055
                y: parent.height*0.55
                height: parent.height*0.2
                width: parent.width*0.2


                Image{
                    id:img
                    width: parent.width
                    height: parent.height
                    source: "../images/Arrow_down_left.png"
                    //                                 fillMode: Image.scale
                }
            }
            Button {
                id: button1
                x: parent.width*0.50
                y: parent.height*0.77

                height: parent.height*0.15

                width: parent.width*0.22


                Image{
                    id:img2
                    width: parent.width
                    height: parent.height
                    source: "../images/Arrow_Down_right.png"
                    //                                 fillMode: Image.scale
                }
            }
            Button {
                id: button3
                x: parent.width*0.055
                y: parent.height*0.1
                height: parent.height*0.2
                width: parent.width*0.2


                Image{
                    id:img3
                    width: parent.width
                    height: parent.height
                    source: "../images/Arrow_top_left.png"
                    //                                 fillMode: Image.scale
                }
            }
            Button {
                id: button4
                property int abc:0
                x: parent.width*0.55
                y: parent.height*0.1
                height: parent.height*0.18
                width: parent.width*0.22



                Image{
                    id:img4
                    width: parent.width
                    height: parent.height
                    source: "../images/Arrow_right.png"
                    //                                 fillMode: Image.scale
                }
            }


        }

    }
}
