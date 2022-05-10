import QtQuick
import QtQuick.Controls
import Flexbotic
import QtQuick.Layouts 6.0
        Button {
            id:customButton
            property url buttonIcon: "../images/Home.svg"
            property string buttonText
            autoExclusive: true


                  Text {
                      id: text_in
                    text: buttonText
                        color:"white"
                            font.pixelSize: 20
                              fontSizeMode: Text.Fit
                              minimumPixelSize: 2
                              anchors.left: custom_icon.right
                              height: parent.height
                  }

            background: Rectangle {
                anchors.fill: parent
                color: parent.checked ?  "#1c1c1f" : (parent.hovered ? "#1c1c1f" : "#252529")
            }
            IconImage {
                id: custom_icon
                source: buttonIcon
                width: parent.width * 0.2
                height: parent.height
            }
        }

