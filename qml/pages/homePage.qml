import QtQml 2.15
import QtQuick 2.15
import QtQuick.Controls 2.15
import "../controls"
import QtQuick 2.12
import QtQuick.Controls 2.12


Item {

    id: item1
    Rectangle {
        id: homeBg
        color: "#190000"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        ScrollView {
            id: cardsTree
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: duplicateBtn.top
            wheelEnabled: true
            hoverEnabled: true
            focusPolicy: Qt.ClickFocus
            spacing: 2
            contentHeight: 600
            contentWidth: -1
            clip: true
            anchors.bottomMargin: 10
            anchors.leftMargin: 20
            anchors.topMargin: 10
            anchors.rightMargin: 20

            Rectangle {
                id: cardBg
                visible: true
                height: 100
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right

                Label {
                    id: textTitle1
                    color: "#ffffff"
                    text: qsTr("TITLE")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                    anchors.topMargin: 6
                    font.pointSize: 10
                    anchors.rightMargin: 14
                    font.bold: false
                    anchors.leftMargin: 11
                }

                CustomTextField {
                    id: textArea1
                    placeholderText: "Your text goes here!"
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WrapAnywhere
                    font.wordSpacing: 0.1
                    font.pointSize: 9
                    anchors.left: parent.left
                    anchors.right: colBtnsCard1.left
                    anchors.top: textTitle1.bottom
                    anchors.bottom: parent.bottom
                    font.letterSpacing: 0.5
                    horizontalAlignment: Text.AlignLeft
                    anchors.topMargin: 4
                    anchors.bottomMargin: 6
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    hoverEnabled: true
                    placeholderTextColor: "#8c8c8c"
                    colorDefault: "#150000"
                    colorOnFocus: "#220000"
                    colorMouseOver: "#2c0000"
                    Keys.onEnterPressed: {
                        backend.welcomeText(textField.text)
                    }
                    Keys.onReturnPressed: {
                        backend.welcomeText(textField.text)
                    }
                }

                Column {
                    id: colBtnsCard1
                    anchors.right: parent.right
                    anchors.top: textTitle1.bottom
                    anchors.bottom: parent.bottom
                    padding: 0
                    anchors.bottomMargin: 6
                    anchors.topMargin: 4
                    spacing: 5
                    transformOrigin: Item.Center
                    PageBtn {
                        id: copyBtn4
                        x: 0
                        y: 0
                        width: 80
                        height: 31
                        text: qsTr("Copy")
                        iconHeight: 20
                        font.family: "Tahoma"
                        font.pointSize: 9
                    }

                    PageBtn {
                        id: editBtn4
                        x: 0
                        y: 0
                        width: 80
                        height: 31
                        text: "Edit"
                        font.family: "Tahoma"
                        autoExclusive: true
                        checkable: false
                        font.pointSize: 9
                        btnIconSource: "../../images/svg_images/edit.svg"
                        display: AbstractButton.TextBesideIcon
                        checked: true
                    }
                    anchors.rightMargin: 5
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 0
            }

            Rectangle {
                id: cardBg1
                height: 100
                visible: true
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg.bottom
                anchors.topMargin: 13
                Label {
                    id: textTitle2
                    color: "#ffffff"
                    text: qsTr("TITLE")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                    anchors.topMargin: 6
                    font.pointSize: 10
                    font.bold: false
                    anchors.rightMargin: 14
                    anchors.leftMargin: 11
                }

                CustomTextField {
                    id: textArea2
                    anchors.left: parent.left
                    anchors.right: colBtnsCard2.left
                    anchors.top: textTitle2.bottom
                    anchors.bottom: parent.bottom
                    font.letterSpacing: 0.5
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WrapAnywhere
                    font.wordSpacing: 0.1
                    placeholderTextColor: "#8c8c8c"
                    font.pointSize: 9
                    hoverEnabled: true
                    anchors.bottomMargin: 6
                    placeholderText: "Your text goes here!"
                    colorOnFocus: "#220000"
                    colorDefault: "#150000"
                    anchors.topMargin: 4
                    anchors.leftMargin: 5
                    anchors.rightMargin: 5
                    colorMouseOver: "#2c0000"
                }

                Column {
                    id: colBtnsCard2
                    anchors.right: parent.right
                    anchors.top: textTitle2.bottom
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 6
                    anchors.topMargin: 4
                    PageBtn {
                        id: copyBtn5
                        x: 0
                        y: 0
                        width: 80
                        height: 31
                        text: qsTr("Copy")
                        font.family: "Tahoma"
                        font.pointSize: 9
                        iconHeight: 20
                    }

                    PageBtn {
                        id: editBtn5
                        x: 0
                        y: 0
                        width: 80
                        height: 31
                        text: "Edit"
                        autoExclusive: true
                        font.family: "Tahoma"
                        btnIconSource: "../../images/svg_images/edit.svg"
                        font.pointSize: 9
                        checked: true
                        checkable: false
                        display: AbstractButton.TextBesideIcon
                    }
                    spacing: 5
                    transformOrigin: Item.Center
                    anchors.rightMargin: 5
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 0
            }

            Rectangle {
                id: cardBg2
                height: 100
                visible: true
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg1.bottom
                anchors.topMargin: 13
                Label {
                    id: textTitle3
                    color: "#ffffff"
                    text: qsTr("TITLE")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                    anchors.topMargin: 6
                    font.pointSize: 10
                    font.bold: false
                    anchors.rightMargin: 14
                    anchors.leftMargin: 11
                }

                CustomTextField {
                    id: textArea3
                    anchors.left: parent.left
                    anchors.right: colBtnsCard3.left
                    anchors.top: textTitle3.bottom
                    anchors.bottom: parent.bottom
                    font.letterSpacing: 0.5
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WrapAnywhere
                    font.wordSpacing: 0.1
                    placeholderTextColor: "#8c8c8c"
                    font.pointSize: 9
                    hoverEnabled: true
                    anchors.bottomMargin: 6
                    placeholderText: "Your text goes here!"
                    colorOnFocus: "#220000"
                    colorDefault: "#150000"
                    anchors.topMargin: 4
                    anchors.leftMargin: 5
                    anchors.rightMargin: 5
                    colorMouseOver: "#2c0000"
                }

                Column {
                    id: colBtnsCard3
                    anchors.right: parent.right
                    anchors.top: textTitle3.bottom
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 6
                    anchors.topMargin: 4
                    PageBtn {
                        id: copyBtn6
                        x: 0
                        y: 0
                        width: 80
                        height: 31
                        text: qsTr("Copy")
                        font.family: "Tahoma"
                        font.pointSize: 9
                        iconHeight: 20
                    }

                    PageBtn {
                        id: editBtn6
                        x: 0
                        y: 0
                        width: 80
                        height: 31
                        text: "Edit"
                        autoExclusive: true
                        btnIconSource: "../../images/svg_images/edit.svg"
                        font.family: "Tahoma"
                        font.pointSize: 9
                        checked: true
                        checkable: false
                        display: AbstractButton.TextBesideIcon
                    }
                    spacing: 5
                    anchors.rightMargin: 5
                    transformOrigin: Item.Center
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 0
            }

            Rectangle {
                id: cardBg3
                height: 100
                visible: true
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg2.bottom
                anchors.topMargin: 13
                Label {
                    id: textTitle4
                    color: "#ffffff"
                    text: qsTr("TITLE")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                    anchors.topMargin: 6
                    font.pointSize: 10
                    font.bold: false
                    anchors.rightMargin: 14
                    anchors.leftMargin: 11
                }

                CustomTextField {
                    id: textArea4
                    anchors.left: parent.left
                    anchors.right: colBtnsCard4.left
                    anchors.top: textTitle4.bottom
                    anchors.bottom: parent.bottom
                    font.letterSpacing: 0.5
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WrapAnywhere
                    font.wordSpacing: 0.1
                    placeholderTextColor: "#8c8c8c"
                    font.pointSize: 9
                    hoverEnabled: false
                    anchors.bottomMargin: 6
                    placeholderText: "Your text goes here!"
                    colorOnFocus: "#220000"
                    colorDefault: "#150000"
                    anchors.topMargin: 4
                    anchors.leftMargin: 5
                    anchors.rightMargin: 5
                    colorMouseOver: "#2c0000"
                }

                Column {
                    id: colBtnsCard4
                    anchors.right: parent.right
                    anchors.top: textTitle4.bottom
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 6
                    anchors.topMargin: 4
                    PageBtn {
                        id: copyBtn7
                        x: 0
                        y: 0
                        width: 80
                        height: 31
                        text: qsTr("Copy")
                        font.family: "Tahoma"
                        font.pointSize: 9
                        iconHeight: 20
                    }

                    PageBtn {
                        id: editBtn7
                        x: 0
                        y: 0
                        width: 80
                        height: 31
                        text: "Edit"
                        autoExclusive: true
                        font.family: "Tahoma"
                        btnIconSource: "../../images/svg_images/edit.svg"
                        font.pointSize: 9
                        checked: true
                        checkable: false
                        display: AbstractButton.TextBesideIcon
                    }
                    spacing: 5
                    transformOrigin: Item.Center
                    anchors.rightMargin: 5
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 0
            }

            Rectangle {
                id: cardBg4
                height: 100
                visible: true
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg3.bottom
                anchors.topMargin: 13
                Label {
                    id: textTitle5
                    color: "#ffffff"
                    text: qsTr("TITLE")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                    anchors.topMargin: 6
                    font.pointSize: 9
                    font.bold: true
                    anchors.rightMargin: 14
                    anchors.leftMargin: 14
                }

                CustomTextField {
                    id: textArea5
                    anchors.left: parent.left
                    anchors.right: colBtnsCard5.left
                    anchors.top: textTitle5.bottom
                    anchors.bottom: parent.bottom
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WrapAnywhere
                    placeholderTextColor: "#8c8c8c"
                    font.pointSize: 9
                    hoverEnabled: false
                    anchors.bottomMargin: 6
                    placeholderText: "Your text goes here!"
                    colorOnFocus: "#220000"
                    colorDefault: "#150000"
                    anchors.topMargin: 6
                    anchors.leftMargin: 5
                    anchors.rightMargin: 5
                    colorMouseOver: "#2c0000"
                }

                Column {
                    id: colBtnsCard5
                    anchors.right: parent.right
                    anchors.top: textTitle5.bottom
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 6
                    anchors.topMargin: 6
                    PageBtn {
                        id: copyBtn8
                        x: 0
                        y: 0
                        width: 80
                        height: 31
                        text: qsTr("Copy")
                        font.family: "Tahoma"
                        font.pointSize: 9
                        iconHeight: 20
                    }

                    PageBtn {
                        id: editBtn8
                        x: 0
                        y: 0
                        width: 80
                        height: 31
                        text: "Edit"
                        autoExclusive: true
                        btnIconSource: "../../images/svg_images/edit.svg"
                        font.family: "Tahoma"
                        font.pointSize: 9
                        checked: true
                        checkable: false
                        display: AbstractButton.TextBesideIcon
                    }
                    spacing: 5
                    anchors.rightMargin: 5
                    transformOrigin: Item.Center
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 0
            }

        }

        CircleButton{
            id: duplicateBtn
            x: 301
            objectName: "duplicateBtn"
            y: 415
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 6
            btnColorMouseOver: "#2e0001"
            btnColorClicked: "#710002"
            btnColorDefault: "#000000"
            anchors.bottomMargin: 12
        }

        CircleButton{
            id: removeBtn
            objectName: "removeBtn"
            y: 430
            anchors.left: duplicateBtn.right
            anchors.bottom: parent.bottom
            anchors.leftMargin: 5
            font.pointSize: 6
            btnColorMouseOver: "#2e0001"
            btnColorClicked: "#710002"
            btnColorDefault: "#000000"
            anchors.bottomMargin: 12
            btnIconSource: "../../images/svg_images/minus.svg"
        }

    }

    Connections{
        target: backend

        function onSetName(name){
            textArea1.text = name
        }

        function onPrintTime(time){
            labelDate.text = time
        }

//      For Show/Hide something
//        function onIsVisible(isVisible){
//            rectangleVisible.visible = isVisible
//        }
    }

}
/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:1.33;height:480;width:640}D{i:7}D{i:9}D{i:15}D{i:21}
D{i:27}
}
##^##*/
