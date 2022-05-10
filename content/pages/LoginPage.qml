import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls 2.3
import "../components"
import "../pages"


Rectangle {
    id: rectangle
 anchors.fill: parent
 color:"#1c1c1f"
 border.color: "#ffffff"
     Rectangle {
             id:loginpage
            height: parent.height*0.6
            width: parent.width*0.6
             property alias hoverButton: hoverButton
            color:"#1c1c1f"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter

             Row {
                 id: row
                 anchors.fill: parent
                 spacing: 5

                 Item {
                     id: item1
                     width: parent.width*0.25
                     height: parent.height*0.4

                     Image {
                         id: lock2
                         anchors.fill: parent
                         source: "../images/lock2.png"
                         fillMode: Image.PreserveAspectFit
                     }


                 }

                 Item {
                     id: item2
                     width: parent.width-item1.width
                     height: parent.height

                     Column {
                         id: column
                         anchors.fill: parent

                         Text {
                             id: text1
                             color: "white"
                             height: parent.height*0.1
                             width: parent.width
                             text: qsTr("User is trying to unlock the application configuration")
                             font.pixelSize: 30
                             fontSizeMode: Text.Fit
                             minimumPixelSize: 2
                             verticalAlignment: Text.AlignVCenter
                         }

                         Item {
                             id: item3
                             width: parent.width
                             height: parent.height*0.13
                         }
                         Text {
                             id: text2
                             color: "white"
                             height: parent.height*0.1
                             width: parent.width
                             text: qsTr("Enter your password to allow this")
                             font.pixelSize: 30
                             fontSizeMode: Text.Fit
                             minimumPixelSize: 2
                             verticalAlignment: Text.AlignVCenter
                         }
                         Item {
                             id: gap
                             width: parent.width
                             height: parent.height*0.13
                         }

                         Row  {
                             id: row1
                             width: parent.width
                             height: parent.height*0.13


                             Item{
                                 id: usertxet_item
                               width: parent.width*0.2
                               height: parent.height


                                  Text {
                                  id: username
                                   color: "white"
                                 height: parent.height
                                  width: parent.width
                                 text: qsTr("Username :")
                                font.pixelSize: 30
                                 fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                                 verticalAlignment: Text.AlignVCenter
                                 }

                             }

                             Item {
                                 id: useritem
                                 width: parent.width*0.5
                                 height: parent.height


                           TextField {
                               id:username_field
                               placeholderText: qsTr("Enter Username")
                               font.pixelSize:parent.height*0.25 || parent.width*0.25
                               height: parent.height
                               horizontalAlignment: Text.AlignHCenter
                               baselineOffset: 33
                               width: parent.width
                                                      }
                             }

                             }

                         Row {
                             id: row2
                             width: parent.width
                             height: parent.height*0.13

                             Item {
                                 id: passtxet_item
                               width: parent.width*0.2
                               height: parent.height

                                  Text {
                                  id: password
                                   color: "white"
                                 height: parent.height
                                  width: parent.width
                                 text: qsTr("Password :")
                                font.pixelSize: 30
                                 fontSizeMode: Text.Fit
                                minimumPixelSize: 2
                                 verticalAlignment: Text.AlignVCenter
                                                     }

                             }
                             Item {
                                 id: pass_item
                                 width: parent.width*0.5
                                 height: parent.height

                           TextField {
                               id:password_field
                               placeholderText: qsTr("Enter Password")
                               echoMode: TextInput.Password
                               height: parent.height
                                font.pixelSize:parent.height*0.25 || parent.width*0.25
                               horizontalAlignment: Text.AlignHCenter
                               width: parent.width
                           }
                             }

                         }

                         Item {
                             id: buttonitem
                             width: parent.width*0.7
                             height: parent.height*0.2

                             Row {
                                 id: buttonrow
                                 width: parent.width*0.6
                                 height: parent.height*0.7
                                 anchors.right: parent.right
                                 anchors.bottom: parent.bottom
                                 spacing: 15

                                 HoverButton{
                                 width: parent.width*0.5
                                 stepcolor: "#545652"
                                 steptext: "Cancel"
                                 radiuso: 15
                                 radiusi: 15

                            Connections {
                                onClicked: {
                                    username_field.text=""
                                    password_field.text=""

                                }
                            }
                                 }
                                 HoverButton{
                                     id: hoverButton
                                     width: parent.width*0.5
                                     stepcolor: "#545652"
                                     steptext: "Unlock"
                                radiuso: 15
                                radiusi: 15
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
    D{i:0;autoSize:true;formeditorZoom:0.5;height:480;width:640}
}
##^##*/
