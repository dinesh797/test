import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls 2.3
import "../components"
import "../pages"
import QtQuick.Layouts 6.0

Rectangle {
    id:programpage
    color: "#1c1c1f"
    border.color: "transparent"
    property alias step3rc: step3rc
    property alias step2rc: step2rc
    property alias step1rc: step1rc

    property alias st: st
    property alias page2: page2

    Column {
        id: column
        width: parent.width
        height: parent.height
        spacing:10

        Item {
            id: item1
            width: parent.width
            height: parent.height*0.2

            Row {
                id: row
                anchors.fill: parent
            }
        }

        Item {
                id: item2
                width: parent.width
                height: parent.height*0.25
                Row{
                    id: row0
                    width: parent.width
                    height: parent.height
                    spacing: 10
                    Rectangle {
                        id: rectangle1
                        width: parent.width*0.3
                       height: parent.height
                        color:"#252529"

                        ColumnLayout {
                            id: columnLayout
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            height: parent.height*0.85
                            width: parent.width*0.97
                            spacing: 9

                            Text {
                                id: robotselectiontext
                                Layout.fillWidth: true
                                text: qsTr("Robot Selection")
                                font.pixelSize: 12
                                color:"white"
                                verticalAlignment: Text.AlignVCenter
                                fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                            }
                            Item {
                                id: item6
                                layer.smooth: true
                                Layout.leftMargin: 20
                                Layout.fillHeight: true
                                Layout.fillWidth: true

                                RobotSelection {
                                    id: rectangle
                                    anchors.fill: parent
                                    Layout.fillHeight: true
                                    Layout.fillWidth: true
                                    Layout.leftMargin: 24
                                    width: parent.width
                                }
                            }
                        }
                    }

                    Rectangle {
                        id: name
                        width: parent.width*0.690
                        height: parent.height
                        color:"#252529"


                        ProgramRobotSettings {
                            id: programrobotsettings
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.horizontalCenter: parent.horizontalCenter
                            height: parent.height*0.85
                            width: parent.width*0.97
                        }
                    }


                }


            }

        Item {
            id: item3
            width: parent.width
            height: parent.height*0.4

            Row {
                id: row2
                anchors.fill: parent
                spacing: 10

                WayPoints {
                    id: rectangle2
                    color: "#252529"
                    waytext: "RR1 Waypoints"
                    height: parent.height
                }

                Rectangle {
                  id: item9
                  color:"#252529"
                  width: parent.width*0.20
                  height: parent.height

                    RobotControl {
                        id: step1rc
                        color: "#252529"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        robottext: "RR1 Robot Control"
                        height: parent.height*0.95
                        width: parent.width*0.97
                        Connections {
                            target: step1rc.button
                            onClicked: {
                            if(step1rc.button.clicked)

                            {
                               page1.item.slider2.decrease()
                            }

                            }
                        }

                        Connections {
                            target: step1rc.button1
                            onClicked: {
                            if(step1rc.button1.clicked)

                            {
                               page1.item.slider2.increase()
                            }

                            }
                        }
                        Connections {
                            target: step1rc.button3
                            onClicked: {
                            if(step1rc.button3.clicked)

                            {
                               page1.item.slider.decrease()
                            }

                            }
                        }
                        Connections {
                            target: step1rc.button4
                            onClicked: {
                            if(step1rc.button4.clicked)

                            {
                               page1.item.slider.increase()
                            }

                            }
                        }
                        visible:  false
                    }
                    RobotControl {
                        id: step2rc
                        color: "#252529"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        robottext: "RR1 Robot Control"
                        height: parent.height*0.95
                        width: parent.width*0.97
                        visible: false

                        Connections {
                            target: step2rc.button
                            onClicked: {
                            if(step2rc.button.clicked)

                            {
                               page2.item.slider2.decrease()
                            }

                            }
                        }

                        Connections {
                            target: step2rc.button1
                            onClicked: {
                            if(step2rc.button1.clicked)

                            {
                               page2.item.slider2.increase()
                            }

                            }
                        }
                        Connections {
                            target: step2rc.button3
                            onClicked: {
                            if(step2rc.button3.clicked)

                            {
                               page2.item.slider.decrease()
                            }

                            }
                        }
                        Connections {
                            target: step2rc.button4
                            onClicked: {
                            if(step2rc.button4.clicked)

                            {
                               page2.item.slider.increase()
                            }

                            }
                        }
                    }
                    RobotControl {
                        id: step3rc
                        color: "#252529"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.horizontalCenter: parent.horizontalCenter
                        robottext: "RR1 Robot Control"
                        height: parent.height*0.95
                        width: parent.width*0.97
                        Connections {
                            target: step3rc.button
                            onClicked: {
                            if(step3rc.button.clicked)

                            {
                               page3.item.slider2.decrease()
                            }

                            }
                        }

                        Connections {
                            target: step3rc.button1
                            onClicked: {
                            if(step3rc.button1.clicked)

                            {
                               page3.item.slider2.increase()
                            }

                            }
                        }
                        Connections {
                            target: step3rc.button3
                            onClicked: {
                            if(step3rc.button3.clicked)

                            {
                               page3.item.slider.decrease()
                            }

                            }
                        }
                        Connections {
                            target: step3rc.button4
                            onClicked: {
                            if(step3rc.button4.clicked)

                            {
                               page3.item.slider.increase()
                            }

                            }
                        }
                        visible: false
                    }
                }




                Item {
                    id: st
                    height: parent.height
                    width: parent.width*0.500

                    Loader{
                    id:page1
                    anchors.fill: parent
                    sourceComponent: Component{
                            AxisPosition{}
                    }

                    visible: false
                 }

                    Loader{
                    id:page2
                    anchors.fill: parent

                    sourceComponent: Component{

                            AxisPosition{}
                    }

                    visible: false
                 }
                    Loader{
                    id:page3
                    anchors.fill: parent

                    sourceComponent: Component{

                            AxisPosition{}
                    }

                    visible: false
                 }

                    Rectangle{
                        id:stepstext

                        anchors.fill: parent
                        color:"#252529"
                        Text {
                            id:stepstextp
                            anchors.fill: parent
                            text: qsTr("Click to Add/Remove Step")
                            font.pixelSize: 30
                            horizontalAlignment: Text.AlignHCenter

                            color:"white"
                            verticalAlignment: Text.AlignVCenter
                            anchors.rightMargin: 20
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2

                        }
                    }


                    states: [
                        State {
                            name: "page1"

                            PropertyChanges { target: page1; active:true;visible:true; }
                            PropertyChanges { target: page2; visible:false; }
                            PropertyChanges { target: page3; visible:false;}
                            PropertyChanges { target: stepstext; visible:false }
                             PropertyChanges { target: step1rc; visible:true }
                        },
                        State {


                            name: "page2"


                            PropertyChanges { target: page3; visible:false; }
                            PropertyChanges { target: page1; visible:false; }
                            PropertyChanges { target: page2;visible:true ;active:true}
                            PropertyChanges { target: stepstext; visible:false }
                             PropertyChanges { target: step2rc; visible:true }
                        },


                        State {
                            name: "page3"


                            PropertyChanges { target: page1; visible:false; }
                            PropertyChanges { target: page2; visible:false; }
                            PropertyChanges { target: page3 ; visible:true;active:true;}
                             PropertyChanges { target: stepstext; visible:false }
                              PropertyChanges { target: step3rc; visible:true }
                        },
                        State {
                            name: "page4"


                            PropertyChanges { target: page1; visible:false; }
                            PropertyChanges { target: page2; visible:false; }
                            PropertyChanges { target: page3; visible:false}
                             PropertyChanges { target: stepstext; visible:true }
                        }

                    ]

                }

            }
        }
        Rectangle {
            id: item4
            width: parent.width
            height: parent.height*0.080
            anchors.right: parent.right
              color: "#252529"

           Row {
               id: row6
               spacing: 4

               width: parent.width*0.38
               height: parent.height
               anchors.verticalCenter: parent.verticalCenter
               anchors.right: parent.right
               layoutDirection: Qt.RightToLeft


               HoverButton{
               id:summuryy
               width: parent.width*0.3
               height: parent.height
               stepcolor:"#7d00ff"
               steptext: "Summary"
               anchors.verticalCenter: parent.verticalCenter

               }
               HoverButton{
               id:cacel
                width: parent.width*0.3
                height: parent.height
                stepcolor:"#889ab9"
                steptext: "Cancel"
                anchors.verticalCenter: parent.verticalCenter

               }
               HoverButton{
               id:save
                width: parent.width*0.3
                height: parent.height
                stepcolor:"#7d00ff"
                steptext: "Save"
                anchors.verticalCenter: parent.verticalCenter

               }
           }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:800;width:900}
}
##^##*/
