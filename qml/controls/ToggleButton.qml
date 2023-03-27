import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: toggleBtn

    //CUSTOM PROPERTIES
    property url btnIconSource: "../../images/svg_images/menu_icon.svg"
    property color btnColorDefault : "#1c1d20"
    property color btnColorMouseOver : "#23272E"
    property color btnColorClicked : "#00a1f1"


    QtObject{
        id: internal

        //MOUSE OVER AND CLICKED COLOR
        property var dinamicColor: if(toggleBtn.down){
                                       toggleBtn.down ? btnColorClicked : btnColorDefault
                                   }else {
                                       toggleBtn.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 70
    implicitHeight: 60
    background: Rectangle{
        id: bgBtn
        color: internal.dinamicColor

        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 25
            width: 25
            fillMode: Image.PreserveAspectFit
        }

        ColorOverlay {
            anchors.fill: iconBtn
            source: iconBtn
            color: "#ffffff"
            antialiasing: false

        }
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:8}
}
##^##*/
