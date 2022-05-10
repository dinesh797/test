import QtQuick
import QtQuick.Controls
import Flexbotic
import QtQuick.Layouts 6.0
import "components"


Rectangle {
    id: main
    anchors.fill: parent
    property alias home_button: home_button

    color: "#252529"
    border.color: "#252529"

    Item {
        id: sidebar
        height: parent.height
        width: parent.width * 0.2
        Rectangle {
            id: left_menu
            anchors.fill: parent
            width: parent.width * 0.2
            color: "#252529"

            Column {
                id: left_column
                height: left_menu.height
                width: left_menu.width

                spacing: 10

                Item {
                    id: row

                    width: left_column.width
                    height: parent.height * 0.1

                    Image {
                        id: app_icon

                        width: parent.width * 0.2
                        height: parent.height * 0.4
                        anchors.verticalCenter: parent.verticalCenter

                        source: "images/app_icon.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: text1
                        text: qsTr("FLEXBOTIC")
                        font.pixelSize: 20
                        color: "white"
                        minimumPixelSize: 2
                        fontSizeMode: Text.Fit
                        height: parent.height
                        verticalAlignment: Text.AlignVCenter
                        anchors.left: app_icon.right
                        anchors.right: parent.right
                    }
                }

                Item {
                    id: row1
                    width: parent.width * 0.2
                    height: parent.height * 0.040

                    Text {
                        id: text2
                        text: qsTr("MAIN")
                        color: "white"
                        font.pixelSize: 15
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        height: parent.height
                    }
                }

                CustomButton {
                    id: home_button

                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: parent.height * 0.040
                    buttonText: "Home"

                    checkable: true

                    Connections {
                        onClicked: {

                            //                            home_button.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl("pages/HomePage.qml"))
                            console.log("Home button clicked")
                        }
                    }
                }
                CustomButton {
                    id: program_button

                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: parent.height * 0.040
                    checkable: true
                    buttonText: "Program"

                    Connections {
                        onClicked: {

                            //                            home_button.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl(
                                               "pages/ProgramPage.qml"))
                            console.log("Program button clicked")
                        }
                    }

                    buttonIcon: "../images/programs.svg"
                }
                CustomButton {
                    id: manual_mode

                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: parent.height * 0.040
                    checkable: true
                    buttonText: "Manual Mode"

                    Connections {
                        onClicked: {

                            //                            home_button.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl(
                                               "pages/ProgramPage.qml"))
                            console.log("Program button clicked")
                        }
                    }

                    buttonIcon: "../images/current_position.svg"
                }
                CustomButton {
                    id: run_mode

                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: parent.height * 0.040
                    checkable: true
                    buttonText: "Run Mode"

                    Connections {
                        onClicked: {

                            //                            home_button.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl(
                                               "pages/ProgramPage.qml"))
                            console.log("Run button clicked")
                        }
                    }

                    buttonIcon: "../images/Run.svg"
                }

                Item {
                    id: row2
                    width: parent.width * 0.2
                    height: parent.height * 0.040

                    Text {
                        id: text3
                        text: qsTr("SETUP")
                        color: "white"
                        font.pixelSize: 15
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        height: parent.height
                    }
                }
                CustomButton {
                    id: mastering_mode

                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: parent.height * 0.040
                    checkable: true
                    buttonText: "Mastering Mode"

                    Connections {
                        onClicked: {

                            //                            home_button.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl(
                                               "pages/ProgramPage.qml"))
                            console.log("Mastering button clicked")
                        }
                    }

                    buttonIcon: "../images/robot_mastering.svg"
                }

                CustomButton {
                    id: robot_mode

                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: parent.height * 0.040
                    checkable: true
                    buttonText: "Robots"

                    Connections {
                        onClicked: {

                            //                            home_button.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl(
                                               "pages/ProgramPage.qml"))
                            console.log("Robot button clicked")
                        }
                    }

                    buttonIcon: "../images/robots.svg"
                }
                CustomButton {
                    id: detector_button

                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: parent.height * 0.040
                    checkable: true
                    buttonText: "Detectors"

                    Connections {
                        onClicked: {

                            //                            home_button.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl(
                                               "pages/ProgramPage.qml"))
                            console.log("Detectors button clicked")
                        }
                    }

                    buttonIcon: "../images/robot_detectors.svg"
                }
                CustomButton {
                    id: speed_button

                    anchors.left: parent.left
                    anchors.right: parent.right
                    height: parent.height * 0.040
                    checkable: true
                    buttonText: "Speed"

                    Connections {
                        onClicked: {

                            //                            home_button.isActiveMenu = true
                            stackView.push(Qt.resolvedUrl(
                                               "pages/ProgramPage.qml"))
                            console.log("Detectors button clicked")
                        }
                    }

                    buttonIcon: "../images/robot.svg"
                }
                Button {
                    id: torque_button
                    height: parent.height * 0.040
                    anchors.left: parent.left
                    anchors.right: parent.right

                    checkable: true
                    Text {
                        id: torque_text
                        text: qsTr("Torque")
                        color: "white"
                        font.pixelSize: 20
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                        anchors.left: torque_icon.right
                        anchors.right: parent.right
                        height: parent.height
                    }

                    IconImage {
                        id: torque_icon
                        source: "images/robot_torque.svg"
                        width: parent.width * 0.2
                        height: parent.height
                    }
                    background: Rectangle {
                        color: "#252529"
                    }
                }
                Button {
                    id: light_button
                    height: parent.height * 0.040
                    anchors.left: parent.left
                    anchors.right: parent.right

                    checkable: true
                    Text {
                        id: light_text
                        text: qsTr("Light")
                        color: "white"
                        font.pixelSize: 20
                        fontSizeMode: Text.Fit
                        minimumPixelSize: 2
                        anchors.left: light_icon.right
                        anchors.right: parent.right
                        height: parent.height
                    }

                    IconImage {
                        id: light_icon
                        source: "images/robot_light.svg"
                        width: parent.width * 0.2
                        height: parent.height
                    }
                    background: Rectangle {
                        color: "#252529"
                    }
                }
            }
        }
    }

    Item {
        id: minimumsize
        width: sidebar.width * 0.2
        height: parent.height
    }

    Item {
        id: maximumsize
        width: sidebar.width
        height: parent.height
    }
    Item {
        id: contentbar

        anchors.left: minimumsize.right
        anchors.right: parent.right
        height: parent.height

        Rectangle {
            id: right_menu
            color: "#1c1c1f"
            anchors.fill: parent

            Item {
                id: right_column
                anchors.fill: parent

                Item {
                    id: item3
                    width: parent.width
                    height: parent.height * 0.07

                    Button {
                        id: button
                        display: AbstractButton.IconOnly
                        checkable: true

                        width : parent.width / 20
                        height: parent.height
                        anchors.top: parent.top

                        Connections {
                            target: button
                            onCheckedChanged: {

                                if (button.checked) {
                                    default_anim.to = maximumsize.width
                                    default_anim.running = enabled
                                } else {

                                    default_anim.to = maximumsize.width * 0.2
                                    default_anim.running = enabled
                                }
                            }
                        }

                        anchors.left: parent.left
                        IconImage {
                            id: menu_icon
                            source: "images/menu_bar_logo.png"

                            fillMode: IconImage.Tile
                            anchors.fill: parent
                        }
                        background: Rectangle {
                            color: "#1c1c1f"
                            anchors.fill: parent
                        }
                    }

                    Image {
                        id: ford_logo_flat
                        width: parent.width / 15
                        height: parent.height
                        anchors.left: button.right
                        source: "images/Ford_logo_flat.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Button {
                        id: help_button

                        height: parent.height
                        width: parent.width / 8
                        anchors.right: rhythmsoft_logo.left
                        antialiasing: true
                        hoverEnabled: true
                        scale: mouseArea.containsMouse ? 0.8 : 1.0
                        smooth: mouseArea.containsMouse
                        MouseArea {
                            id: mouseArea
                            anchors.fill: parent
                            anchors.margins: -10
                            hoverEnabled: true //this line will enable mouseArea.containsMouse
                        }

                        Text {
                            id: help_text
                            text: qsTr("HELP")
                            color: "white"
                            leftPadding: 10
                            font.pixelSize: 17
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                            anchors.left: help_icon.right
                            verticalAlignment: Text.AlignVCenter
                            anchors.right: parent.right
                            height: parent.height
                        }
                        background: Rectangle {
                            color: "#1c1c1f"
                            anchors.fill: parent
                        }
                        IconImage {
                            id: help_icon
                            source: "images/About_Icon.svg"
                            width: parent.width * 0.2
                            height: parent.height
                        }
                    }

                    Image {
                        id: rhythmsoft_logo
                        height: parent.height
                        source: "images/logo.svg"
                        anchors.right: parent.right
                        width: parent.width / 6
                        fillMode: Image.PreserveAspectFit
                    }

                    Button {
                        id: web_button

                        height: parent.height
                        width: parent.width / 9
                        anchors.right: help_button.left
                        checkable: true

                        Text {
                            id: web_text
                            text: qsTr("WEB")
                            color: "white"
                            leftPadding: 10
                            font.pixelSize: 17
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                            anchors.left: web_icon.right
                            verticalAlignment: Text.AlignVCenter
                            anchors.right: parent.right
                            height: parent.height
                        }
                        background: Rectangle {
                            //                            color: "#1c1c1f"
                            //                             Material.background:Material.Blue
                            anchors.fill: parent
                            color: parent.checked ? "red" : (parent.hovered ? "#273539" : "#1c1c1f")
                        }
                        IconImage {
                            id: web_icon
                            source: "images/web_Icon.png"
                            width: parent.width * 0.2
                            height: parent.height
                        }
                        hoverEnabled: true

                        Connections {
                            target: web_button
                        }
                    }

                    Button {
                        id: settings_button
                        hoverEnabled: true

                        smooth: mouseArea.containsMouse
                        MouseArea {
                            id: mouseArea2
                            anchors.fill: parent
                            anchors.margins: -10
                            hoverEnabled: true //this line will enable mouseArea.containsMouse
                        }

                        height: parent.height
                        width: parent.width / 8
                        anchors.right: web_button.left
                        Text {
                            id: settings_text
                            text: qsTr("SETTING")
                            color: "white"
                            leftPadding: 8
                            font.pixelSize: 19
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                            anchors.left: settings_icon.right
                            verticalAlignment: Text.AlignVCenter
                            anchors.right: parent.right
                            height: parent.height
                        }
                        background: Rectangle {
                            color: "#1c1c1f"
                            anchors.fill: parent
                        }
                        IconImage {
                            id: settings_icon
                            source: "images/Setup_Icon.svg"
                            width: parent.width * 0.2
                            height: parent.height
                        }
                    }

                    Button {
                        id: login_button

                        height: parent.height
                        width: parent.width / 9

                        anchors.right: settings_button.left
                        Text {
                            id: login_text

                            text: qsTr("LOGIN")
                            leftPadding: 10
                            color: "white"
                            font.pixelSize: 17
                            fontSizeMode: Text.Fit
                            minimumPixelSize: 2
                            anchors.left: login_icon.right
                            verticalAlignment: Text.AlignVCenter
                            anchors.right: parent.right
                            height: parent.height
                        }
                        background: Rectangle {
                            color: "#1c1c1f"
                            anchors.fill: parent
                        }
                        IconImage {
                            id: login_icon

                            source: "images/About_Icon.svg"
                            width: parent.width * 0.2
                            height: parent.height
                        }
                    }
                }

                Rectangle {
                    id: contentPages
                    width: parent.width
                    height: parent.height - item3.height
                    anchors.top: item3.bottom
                    color: "#1c1c1f"

                    StackView {
                        id: stackView
                        anchors.fill: parent
                        anchors.rightMargin: parent.width * 0.010
                        clip: enabled
                        visible: true
                        initialItem: "pages/HomePage.qml"

                        anchors.leftMargin: parent.width * 0.010
//                          anchors.bottomMargin: parent.width * 0.010



                        pushEnter: Transition {
                            PropertyAnimation {
                                property: "opacity"
                                from: 0
                                to: 1
                                duration: 200
                            }
                        }
                        pushExit: Transition {
                            PropertyAnimation {
                                property: "opacity"
                                from: 1
                                to: 0
                                duration: 200
                            }
                        }
                        popEnter: Transition {
                            PropertyAnimation {
                                property: "opacity"
                                from: 0
                                to: 1
                                duration: 200
                            }
                        }
                        popExit: Transition {
                            PropertyAnimation {
                                property: "opacity"
                                from: 1
                                to: 0
                                duration: 200
                            }
                        }
                    }
                }
            }
        }
    }

    PropertyAnimation {
        id: default_anim
        target: minimumsize
        properties: "width"
        duration: 1000

        easing {
            type: Easing.OutExpo
            amplitude: 2
            period: 0.3
        }
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.33;height:480;width:640}
}
##^##*/

