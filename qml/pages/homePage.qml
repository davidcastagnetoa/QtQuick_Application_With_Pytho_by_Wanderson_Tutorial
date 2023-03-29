import QtQml 2.15
import QtQuick 2.15
import QtQuick.Controls 2.15
import "../controls"
import "qrc:/MyObject.py" as MyObject

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
            id: scrollView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: duplicateBtn.top
            wheelEnabled: true
            hoverEnabled: true
            focusPolicy: Qt.ClickFocus
            spacing: 2
            contentHeight: 100
            contentWidth: -1
            clip: true
            anchors.bottomMargin: 10
            anchors.leftMargin: 20
            anchors.topMargin: 10
            anchors.rightMargin: 20


            MyObject {
                    id: myObject
                    root: item1
                    contextProperty: "myObject"
                }

            Rectangle {
                id: cardBg1
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
                id: cardBg2
                visible: false
                height: 115
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg1.bottom
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
                    font.family: "Tahoma"
                    anchors.topMargin: 6
                    font.pointSize: 9
                    anchors.rightMargin: 14
                    anchors.leftMargin: 14
                    font.bold: true
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
                    anchors.topMargin: 6
                    Text {
                        id: textEdit5
                        height: 76
                        color: "#f4f4f4"
                        text: qsTr("Your text goes here!")
                        anchors.fill: parent
                        font.letterSpacing: 0.3
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        font.family: "Tahoma"
                        anchors.topMargin: 5
                        font.wordSpacing: 0.5
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
                    id: colBtnsCard2
                    x: 505
                    width: 90
                    height: 85
                    anchors.right: parent.right
                    anchors.top: textTitle2.bottom
                    spacing: 2
                    anchors.topMargin: 6
                    transformOrigin: Item.Center
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
                        font.family: "Tahoma"
                        autoExclusive: true
                        font.pointSize: 9
                        checkable: false
                        display: AbstractButton.TextBesideIcon
                        btnIconSource: "../../images/svg_images/edit.svg"
                        checked: true
                    }
                    anchors.rightMargin: 5
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 0
            }

            Rectangle {
                id: cardBg3
                visible: false
                height: 115
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg2.bottom
                anchors.topMargin: 10
                Label {
                    id: textTitle3
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
                    id: textArea3
                    x: 0
                    color: "#000000"
                    radius: 8
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: colBtnsCard3.left
                    anchors.top: textTitle3.bottom
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 6
                    Text {
                        id: textEdit6
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
                    id: colBtnsCard3
                    x: 505
                    width: 90
                    height: 85
                    anchors.right: parent.right
                    anchors.top: textTitle3.bottom
                    spacing: 2
                    anchors.topMargin: 6
                    transformOrigin: Item.Center
                    PageBtn {
                        id: copyBtn6
                        x: 0
                        y: 0
                        text: qsTr("Copy")
                        font.family: "Tahoma"
                        font.pointSize: 9
                    }

                    PageBtn {
                        id: editBtn6
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
                id: cardBg4
                visible: false
                height: 115
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg3.bottom
                anchors.topMargin: 10
                Label {
                    id: textTitle4
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
                    anchors.leftMargin: 14
                    font.bold: true
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
                    anchors.topMargin: 6
                    Text {
                        id: textEdit7
                        height: 76
                        color: "#f4f4f4"
                        text: qsTr("Your text goes here!")
                        anchors.fill: parent
                        font.letterSpacing: 0.3
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        font.family: "Tahoma"
                        anchors.topMargin: 5
                        font.wordSpacing: 0.5
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
                    id: colBtnsCard4
                    x: 505
                    width: 90
                    height: 85
                    anchors.right: parent.right
                    anchors.top: textTitle4.bottom
                    spacing: 2
                    anchors.topMargin: 6
                    transformOrigin: Item.Center
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
                        font.family: "Tahoma"
                        autoExclusive: true
                        font.pointSize: 9
                        checkable: false
                        display: AbstractButton.TextBesideIcon
                        btnIconSource: "../../images/svg_images/edit.svg"
                        checked: true
                    }
                    anchors.rightMargin: 5
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 0
            }

            Rectangle {
                id: cardBg5
                visible: false
                height: 115
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg4.bottom
                anchors.topMargin: 10
                Label {
                    id: textTitle5
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
                    id: textArea5
                    x: 0
                    color: "#000000"
                    radius: 8
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: colBtnsCard5.left
                    anchors.top: textTitle5.bottom
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 6
                    Text {
                        id: textEdit8
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
                    id: colBtnsCard5
                    x: 505
                    width: 90
                    height: 85
                    anchors.right: parent.right
                    anchors.top: textTitle5.bottom
                    spacing: 2
                    anchors.topMargin: 6
                    transformOrigin: Item.Center
                    PageBtn {
                        id: copyBtn8
                        x: 0
                        y: 0
                        text: qsTr("Copy")
                        font.family: "Tahoma"
                        font.pointSize: 9
                    }

                    PageBtn {
                        id: editBtn8
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
                id: cardBg6
                visible: false
                height: 115
                color: "#3d0000"
                radius: 8
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: cardBg5.bottom
                anchors.topMargin: 10
                Label {
                    id: textTitle6
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
                    anchors.leftMargin: 14
                    font.bold: true
                }

                Rectangle {
                    id: textArea6
                    x: 0
                    color: "#000000"
                    radius: 8
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: colBtnsCard6.left
                    anchors.top: textTitle6.bottom
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 6
                    Text {
                        id: textEdit9
                        height: 76
                        color: "#f4f4f4"
                        text: qsTr("Your text goes here!")
                        anchors.fill: parent
                        font.letterSpacing: 0.3
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignTop
                        font.family: "Tahoma"
                        anchors.topMargin: 5
                        font.wordSpacing: 0.5
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
                    id: colBtnsCard6
                    x: 505
                    width: 90
                    height: 85
                    anchors.right: parent.right
                    anchors.top: textTitle6.bottom
                    spacing: 2
                    anchors.topMargin: 6
                    transformOrigin: Item.Center
                    PageBtn {
                        id: copyBtn9
                        x: 0
                        y: 0
                        text: qsTr("Copy")
                        font.family: "Tahoma"
                        font.pointSize: 9
                    }

                    PageBtn {
                        id: editBtn9
                        x: 0
                        y: 0
                        text: "Edit"
                        font.family: "Tahoma"
                        autoExclusive: true
                        font.pointSize: 9
                        checkable: false
                        display: AbstractButton.TextBesideIcon
                        btnIconSource: "../../images/svg_images/edit.svg"
                        checked: true
                    }
                    anchors.rightMargin: 5
                }

            }

        }

        CircleButton{
            id: duplicateBtn
            x: 301
            y: 415
            anchors.bottom: parent.bottom
            font.pointSize: 6
            btnColorMouseOver: "#2e0001"
            btnColorClicked: "#710002"
            btnColorDefault: "#000000"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 10
            onClicked: myObject.show_next_card()

        }
        CircleButton{
            id: removeBtn
            x: 301
            y: 415
            anchors.bottom: parent.bottom
            font.pointSize: 6
            btnColorMouseOver: "#2e0001"
            btnColorClicked: "#710002"
            btnColorDefault: "#000000"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 10
            onClicked: myObject.hide_cards()

        }

    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
