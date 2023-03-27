import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: leftMenuBtn
    text: qsTr("Left Menu Text")

    //CUSTOM PROPERTIES
    property url btnIconSource: "../../images/svg_images/home_icon.svg"
    property color btnColorDefault : "#110000"
    property color btnColorMouseOver : "#2e0001"
    property color btnColorClicked : "#710002"
    property int iconWidth: 18
    property int iconHeight: 18
    property color aciveMenuColor: "#c00"
    property color aciveMenuColorRight: "#190000"
    property bool isActiveMenu: false



    QtObject{
        id: internal

        //MOUSE OVER AND CLICKED COLOR
        property var dinamicColor: if(leftMenuBtn.down){
                                       leftMenuBtn.down ? btnColorClicked : btnColorDefault
                                   }else {
                                       leftMenuBtn.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 250
    implicitHeight: 60
    background: Rectangle{
        id: bgBtn
        color: internal.dinamicColor

        Rectangle{
            anchors{
                top: parent.top
                left: parent.left
                bottom: parent.bottom
            }
            color: aciveMenuColor
            width: 3
            visible: isActiveMenu
        }

        Rectangle{
            anchors{
                top: parent.top
                right: parent.right
                bottom: parent.bottom
            }
            color: aciveMenuColorRight
            width: 5
            visible: isActiveMenu
        }
    }
    contentItem: Item {
        anchors.fill: parent
        id: content
        Image {
            id: iconBtn
            source: btnIconSource
            anchors.leftMargin: 26
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            sourceSize.width: iconWidth
            sourceSize.height: iconHeight
            height: iconHeight
            width: iconWidth
            fillMode: Image.PreserveAspectFit
            antialiasing: true
        }

        ColorOverlay {
            anchors.fill: iconBtn
            source: iconBtn
            color: "#ffffff"
            antialiasing: true
            height: iconHeight
            width: iconWidth
        }

        Text {
            color: "#ffffff"
            text: leftMenuBtn.text
            font: leftMenuBtn.font
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 75
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:4;height:60;width:250}
}
##^##*/
