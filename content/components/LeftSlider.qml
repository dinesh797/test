import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import QtQuick.Layouts 6.0


Button {
    id: button
    property url imgsrc:arrow.source
    background: Rectangle {
           color: "#252529"
           anchors.fill: parent



              }
 IconImage{
 id:arrow
width: parent.width
height: parent.height


source: imgsrc
 }
}

/*##^##
Designer {
    D{i:0;height:37.625;width:34.2}
}
##^##*/
