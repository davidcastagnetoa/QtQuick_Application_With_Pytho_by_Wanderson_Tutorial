import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button {
    id: pageBtn
    text: qsTr("Action")
    topPadding: 6

    //CUSTOM PROPERTIES
    property url btnIconSource: "../../images/svg_images/copy.svg"
    property color btnColorDefault : "#110000"
    property color btnColorMouseOver : "#2e0001"
    property color btnColorClicked : "#710002"
    property int iconWidth: 20
    property int iconHeight: 20
    property color aciveMenuColor: "#c00"
    property color aciveMenuColorRight: "#190000"
    property bool isActiveMenu: false


    QtObject{
        id: internal

        //MOUSE OVER AND CLICKED COLOR
        property var dinamicColor: if(pageBtn.down){
                                       pageBtn.down ? btnColorClicked : btnColorDefault
                                   }else {
                                       pageBtn.hovered ? btnColorMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 90
    implicitHeight: 40
    background: Rectangle{
        id: bgBtn
        color: internal.dinamicColor
        radius: 8

    }
    contentItem: Item {
        anchors.fill: parent
        id: content
        Image {
            id: iconBtn
            source: btnIconSource
            anchors.leftMargin: 5
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
            text: pageBtn.text
            font: pageBtn.font
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: iconBtn.right
            anchors.right: parent.right
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.rightMargin: 6
            anchors.leftMargin: 6
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:4;width:90}
}
##^##*/
