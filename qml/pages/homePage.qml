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
        anchors.rightMargin: 1
        anchors.bottomMargin: 0
        anchors.leftMargin: -1
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
            contentHeight: 580
            contentWidth: -1
            clip: true
            anchors.bottomMargin: 10
            anchors.leftMargin: 20
            anchors.topMargin: 10
            anchors.rightMargin: 20

            Rectangle {
                id: cardBg
                visible: true
                height: 115
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                Label {
                    id: textTitle1
                    color: "#ffffff"
                    text: qsTr("TEXT 1")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Tahoma"
                    anchors.topMargin: 6
                    font.pointSize: 9
                    anchors.rightMargin: 14
                    font.bold: true
                    anchors.leftMargin: 14
                }

                Rectangle {
                    id: textArea1
                    x: 0
                    color: "#000000"
                    radius: 8
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: colBtnsCard1.left
                    anchors.top: textTitle1.bottom
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 6
                    Text {
                        id: textEdit4
                        height: 76
                        color: "#f4f4f4"
                        text: qsTr("Your text goes here!")
                        anchors.fill: parent
                        font.letterSpacing: 0.3
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        font.family: "Tahoma"
                        font.wordSpacing: 0.5
                        anchors.topMargin: 5
                        font.italic: false
                        font.pointSize: 9
                        anchors.bottomMargin: 5
                        anchors.rightMargin: 6
                        anchors.leftMargin: 6
                    }
                    anchors.bottomMargin: 7
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                }

                Column {
                    id: colBtnsCard1
                    x: 505
                    width: 90
                    height: 85
                    anchors.right: parent.right
                    anchors.top: textTitle1.bottom
                    spacing: 2
                    anchors.topMargin: 6
                    transformOrigin: Item.Center
                    PageBtn {
                        id: copyBtn4
                        x: 0
                        y: 0
                        text: qsTr("Copy")
                        font.family: "Tahoma"
                        font.pointSize: 9
                    }

                    PageBtn {
                        id: editBtn4
                        x: 0
                        y: 0
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
                height: 115
                visible: true
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg.bottom
                anchors.topMargin: 10
                Label {
                    id: textTitle2
                    color: "#ffffff"
                    text: qsTr("TEXT 1")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.family: "Tahoma"
                    font.pointSize: 9
                    anchors.rightMargin: 14
                    anchors.leftMargin: 14
                    anchors.topMargin: 6
                }

                Rectangle {
                    id: textArea2
                    x: 0
                    color: "#000000"
                    radius: 8
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: colBtnsCard2.left
                    anchors.top: textTitle2.bottom
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 7
                    Text {
                        id: textEdit5
                        height: 76
                        color: "#f4f4f4"
                        text: qsTr("Your text goes here!")
                        anchors.fill: parent
                        font.letterSpacing: 0.3
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.bottomMargin: 5
                        font.family: "Tahoma"
                        font.wordSpacing: 0.5
                        font.pointSize: 9
                        anchors.rightMargin: 6
                        anchors.leftMargin: 6
                        font.italic: false
                        anchors.topMargin: 5
                    }
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    anchors.topMargin: 6
                }

                Column {
                    id: colBtnsCard2
                    x: 505
                    width: 90
                    height: 85
                    anchors.right: parent.right
                    anchors.top: textTitle2.bottom
                    spacing: 2
                    PageBtn {
                        id: copyBtn5
                        x: 0
                        y: 0
                        text: qsTr("Copy")
                        font.family: "Tahoma"
                        font.pointSize: 9
                    }

                    PageBtn {
                        id: editBtn5
                        x: 0
                        y: 0
                        text: "Edit"
                        display: AbstractButton.TextBesideIcon
                        btnIconSource: "../../images/svg_images/edit.svg"
                        font.family: "Tahoma"
                        checkable: false
                        font.pointSize: 9
                        autoExclusive: true
                        checked: true
                    }
                    anchors.rightMargin: 5
                    transformOrigin: Item.Center
                    anchors.topMargin: 6
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 0
            }

            Rectangle {
                id: cardBg2
                height: 115
                visible: true
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg1.bottom
                Label {
                    id: textTitle3
                    color: "#ffffff"
                    text: qsTr("TEXT 1")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.pointSize: 9
                    font.family: "Tahoma"
                    anchors.leftMargin: 14
                    anchors.rightMargin: 14
                    anchors.topMargin: 6
                }

                Rectangle {
                    id: textArea3
                    x: 0
                    color: "#000000"
                    radius: 8
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: colBtnsCard3.left
                    anchors.top: textTitle3.bottom
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 7
                    Text {
                        id: textEdit6
                        height: 76
                        color: "#f4f4f4"
                        text: qsTr("Your text goes here!")
                        anchors.fill: parent
                        font.letterSpacing: 0.3
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.bottomMargin: 5
                        font.pointSize: 9
                        font.wordSpacing: 0.5
                        font.family: "Tahoma"
                        anchors.leftMargin: 6
                        anchors.rightMargin: 6
                        font.italic: false
                        anchors.topMargin: 5
                    }
                    anchors.leftMargin: 5
                    anchors.rightMargin: 5
                    anchors.topMargin: 6
                }

                Column {
                    id: colBtnsCard3
                    x: 505
                    width: 90
                    height: 85
                    anchors.right: parent.right
                    anchors.top: textTitle3.bottom
                    spacing: 2
                    PageBtn {
                        id: copyBtn6
                        x: 0
                        y: 0
                        text: qsTr("Copy")
                        font.pointSize: 9
                        font.family: "Tahoma"
                    }

                    PageBtn {
                        id: editBtn6
                        x: 0
                        y: 0
                        text: "Edit"
                        display: AbstractButton.TextBesideIcon
                        btnIconSource: "../../images/svg_images/edit.svg"
                        font.pointSize: 9
                        checkable: false
                        font.family: "Tahoma"
                        autoExclusive: true
                        checked: true
                    }
                    anchors.rightMargin: 5
                    transformOrigin: Item.Center
                    anchors.topMargin: 6
                }
                anchors.leftMargin: 0
                anchors.rightMargin: 10
                anchors.topMargin: 10
            }

            Rectangle {
                id: cardBg3
                height: 115
                visible: true
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg2.bottom
                Label {
                    id: textTitle4
                    color: "#ffffff"
                    text: qsTr("TEXT 1")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.family: "Tahoma"
                    font.pointSize: 9
                    anchors.rightMargin: 14
                    anchors.leftMargin: 14
                    anchors.topMargin: 6
                }

                Rectangle {
                    id: textArea4
                    x: 0
                    color: "#000000"
                    radius: 8
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: colBtnsCard4.left
                    anchors.top: textTitle4.bottom
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 7
                    Text {
                        id: textEdit7
                        height: 76
                        color: "#f4f4f4"
                        text: qsTr("Your text goes here!")
                        anchors.fill: parent
                        font.letterSpacing: 0.3
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.bottomMargin: 5
                        font.family: "Tahoma"
                        font.wordSpacing: 0.5
                        font.pointSize: 9
                        anchors.rightMargin: 6
                        anchors.leftMargin: 6
                        font.italic: false
                        anchors.topMargin: 5
                    }
                    anchors.rightMargin: 5
                    anchors.leftMargin: 5
                    anchors.topMargin: 6
                }

                Column {
                    id: colBtnsCard4
                    x: 505
                    width: 90
                    height: 85
                    anchors.right: parent.right
                    anchors.top: textTitle4.bottom
                    spacing: 2
                    PageBtn {
                        id: copyBtn7
                        x: 0
                        y: 0
                        text: qsTr("Copy")
                        font.family: "Tahoma"
                        font.pointSize: 9
                    }

                    PageBtn {
                        id: editBtn7
                        x: 0
                        y: 0
                        text: "Edit"
                        display: AbstractButton.TextBesideIcon
                        btnIconSource: "../../images/svg_images/edit.svg"
                        font.family: "Tahoma"
                        checkable: false
                        font.pointSize: 9
                        autoExclusive: true
                        checked: true
                    }
                    anchors.rightMargin: 5
                    transformOrigin: Item.Center
                    anchors.topMargin: 6
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 0
                anchors.topMargin: 10
            }

            Rectangle {
                id: cardBg4
                height: 115
                visible: true
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg3.bottom
                Label {
                    id: textTitle5
                    color: "#ffffff"
                    text: qsTr("TEXT 1")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.pointSize: 9
                    font.family: "Tahoma"
                    anchors.leftMargin: 14
                    anchors.rightMargin: 14
                    anchors.topMargin: 6
                }

                Rectangle {
                    id: textArea5
                    x: 0
                    color: "#000000"
                    radius: 8
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: colBtnsCard5.left
                    anchors.top: textTitle5.bottom
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 7
                    Text {
                        id: textEdit8
                        height: 76
                        color: "#f4f4f4"
                        text: qsTr("Your text goes here!")
                        anchors.fill: parent
                        font.letterSpacing: 0.3
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        anchors.bottomMargin: 5
                        font.pointSize: 9
                        font.wordSpacing: 0.5
                        font.family: "Tahoma"
                        anchors.leftMargin: 6
                        anchors.rightMargin: 6
                        font.italic: false
                        anchors.topMargin: 5
                    }
                    anchors.leftMargin: 5
                    anchors.rightMargin: 5
                    anchors.topMargin: 6
                }

                Column {
                    id: colBtnsCard5
                    x: 505
                    width: 90
                    height: 85
                    anchors.right: parent.right
                    anchors.top: textTitle5.bottom
                    spacing: 2
                    PageBtn {
                        id: copyBtn8
                        x: 0
                        y: 0
                        text: qsTr("Copy")
                        font.pointSize: 9
                        font.family: "Tahoma"
                    }

                    PageBtn {
                        id: editBtn8
                        x: 0
                        y: 0
                        text: "Edit"
                        display: AbstractButton.TextBesideIcon
                        btnIconSource: "../../images/svg_images/edit.svg"
                        font.pointSize: 9
                        checkable: false
                        font.family: "Tahoma"
                        autoExclusive: true
                        checked: true
                    }
                    anchors.rightMargin: 5
                    transformOrigin: Item.Center
                    anchors.topMargin: 6
                }
                anchors.leftMargin: 0
                anchors.rightMargin: 10
                anchors.topMargin: 10
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
            anchors.bottomMargin: 10
            onClicked: cardCreator.createNewCardBg()

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
            anchors.bottomMargin: 10
            btnIconSource: "../../images/svg_images/minus.svg"
            onClicked: {
                var lastCard = cardsTree.children[cardsTree.children.length - 1];
                if (lastCard.id !== "cardBg") {
                    lastCard.destroy();
                }
            }

        }

    }

}
/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:10}D{i:17}D{i:24}D{i:31}D{i:38}D{i:39}
}
##^##*/
