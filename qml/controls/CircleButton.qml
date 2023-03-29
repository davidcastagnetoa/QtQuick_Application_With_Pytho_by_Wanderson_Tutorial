import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: circleBtn

    //CUSTOM PROPERTIES
    property url btnIconSource: "../../images/svg_images/plus.svg"
    property color btnColorDefault : "#1c1d20"
    property color btnColorMouseOver : "#23272E"
    property color btnColorClicked : "#00a1f1"


    QtObject{
        id: internal

        //MOUSE OVER AND CLICKED COLOR
        property var dinamicColor: if(circleBtn.down){
                                       circleBtn.down ? btnColorClicked : btnColorDefault
                                   }else {
                                       circleBtn.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 40
    implicitHeight: 40
    background: Rectangle{
        id: bgBtn
        color: internal.dinamicColor
        radius: 25
        border.width: 0


        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 15
            width: 15
            fillMode: Image.PreserveAspectFit
        }

        ColorOverlay {
            height: 15
            width: 15
            source: iconBtn
            anchors.horizontalCenter: parent.horizontalCenter
            color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            antialiasing: false

        }
    }
}



