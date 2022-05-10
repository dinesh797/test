import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: rectangle
    color: "transparent"
//    border.color: "#ffffff"

    Image {
        id: assembly
        anchors.fill: parent
        horizontalAlignment: Image.AlignLeft
        source: "../images/assembly.svg"
        antialiasing: true

        ButtonGroup{
        id:grpp
        buttons:item1.children
        }


        Item {
            id: item1
            width: parent.width
            height: parent.height*0.40

            Button {
                id: fl2button

                width: parent.width*0.16
                height: parent.height
                autoExclusive: true
                checkable: true

                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width:2
                    radius: 6
                    color: "transparent"
                }

                Connections {
                    onClicked: console.log("clicked")
                }

                Text {
                    id: fl2text
                    text: qsTr("FL2")
                    color:"white"
                    anchors.right: fl2button.left
                    anchors.bottom: parent.bottom
                    height: parent.height*0.3
                    font.pixelSize: 10
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }

            }

            Button {
                id:fl1button
                width: parent.width*0.16
                height: parent.height
                anchors.left:  verti1.right
                autoExclusive: true
                checkable: true
                ButtonGroup.group: btnGrp

                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width:2
                    radius: 6
                    color: "transparent"
                }

                Connections {
                    onClicked: console.log("clicked")
                }

                Text {
                    id: fl1text
                    text: qsTr("FL1")
                    color:"white"
                    anchors.right: fl1button.left
                    anchors.bottom: parent.bottom
                    height: parent.height*0.3
                    font.pixelSize: 10
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }

            }
            Button {
                id:fr2button
                width: parent.width*0.16
                height: parent.height
                anchors.right:   parent.right
                autoExclusive: true
                checkable: true

                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width:2
                    radius: 6
                    color: "transparent"
                }

                Connections {
                    onClicked: console.log("clicked")
                }

                Text {
                    id: fr2text
                    text: qsTr("FR2")
                    color:"white"
                    anchors.right: fr2button.left
                    anchors.bottom: parent.bottom
                    height: parent.height*0.3
                    font.pixelSize: 10
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }

            }
            Button {
                id:fr1button



                width: parent.width*0.16

                height: parent.height
                anchors.left:  verti2.right
                autoExclusive: true
                checkable: true

                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width:2
                    radius: 6
                    color: "transparent"
                }

                Connections {
                    onClicked: console.log("clicked")
                }

                Text {
                    id: fr1text
                    text: qsTr("FR1")
                    color:"white"
                    anchors.right: fr1button.left
                    anchors.bottom: parent.bottom
                    height: parent.height*0.3
                    font.pixelSize: 10
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }

            }

            Item {
                id: verti1
                width: parent.width*0.25
                height:parent.height
                anchors.left: parent.left
            }

            Item {
                id: verti2
                width: parent.width*0.58
                height: parent.height
            }
        }

        Item {
            id: item2

            width: parent.width
            height:parent.height*0.40
            anchors.bottom: parent.bottom
            Item {
                id: verti4
                width: parent.width*0.58
                height: parent.height
            }
            Item {
                id: verti3
                width: parent.width*0.25
                height: parent.height
                anchors.left: parent.left
            }
            Button {
                id:rr2button
                width: parent.width*0.16
                height: parent.height
                anchors.right:   parent.right
                autoExclusive: true
                checkable: true

                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width:2
                    radius: 6
                    color: "transparent"
                }

                Connections {
                    onClicked: console.log("clicked")
                }

                Text {
                    id: rr2text
                    text: qsTr("RR2")
                    color:"white"
                    anchors.top: parent.top
                    anchors.right:  rr2button.left
                    height: parent.height*0.3
                    font.pixelSize: 10
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }

            }
            Button {
                id:rr1button
                width: parent.width*0.16
                height: parent.height
                anchors.left:  verti4.right
                autoExclusive: true
                checkable: true

                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width:2
                    radius: 6
                    color: "transparent"
                }

                Connections {
                    onClicked: console.log("clicked")
                }

                Text {
                    id: rr1text
                    text: qsTr("RR1")
                    color:"white"
                    anchors.top: parent.top
                    anchors.right:  rr1button.left
                    height: parent.height*0.3
                    font.pixelSize: 10
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }

            }
            Button {
                id:rl1button
                width: parent.width*0.16
                height: parent.height
                anchors.left:  verti3.right
                autoExclusive: true
                checkable: true

                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width:2
                    radius: 6
                    color: "transparent"
                }

                Connections {
                    onClicked: console.log("clicked")
                }

                Text {
                    id: rl1text
                    text: qsTr("RL1")
                    color:"white"
                    anchors.top: parent.top
                    anchors.right:  rl1button.left
                    height: parent.height*0.3
                    font.pixelSize: 10
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }

            }

            Button {
                id: rl2button
                width: parent.width*0.16
                height: parent.height
                autoExclusive: true
                checkable: true

                background: Rectangle {
                    anchors.fill: parent
                    border.color: parent.checked ? "#8204e4" : (parent.hovered ? "#8204e4" : "#252529")
                    border.width:2
                    radius: 6
                    color: "transparent"
                }

                Connections {
                    onClicked: console.log("clicked")
                }

                Text {
                    id: rl2text
                    text: qsTr("RL2")
                     color:"white"
                    anchors.top: parent.top
                    anchors.right:  rl2button.left
                    height: parent.height*0.3
                    font.pixelSize: 10
                    fontSizeMode: Text.Fit
                    minimumPixelSize: 2
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:147;width:242}
}
##^##*/
