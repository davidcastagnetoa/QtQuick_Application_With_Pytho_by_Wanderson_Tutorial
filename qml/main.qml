import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "controls"

Window {
    id: mainWindow
    width: 680
    height: 680
    minimumWidth: 680
    minimumHeight: 680
    visible: true
    color: "#00000000"
    title: qsTr("Course Qt Quick")



    //REMOVE TITLE BAR
    flags: Qt.Window | Qt.FramelessWindowHint

    //PROPERTIES
    property int windowStatus: 0
    property int windowMargin: 10
    property bool windowCollapse: false

    // INTERNAL FUNCTIONS
    QtObject{
        id: internal
        function resetResizeBorder(){
            resizeLeft.visible = true
            resizeRight.visible = true
            resizeBottom.visible = true
            resizeWindow.visible = true
        }

        function maximizedRestore(){
            if(windowStatus == 0){
                mainWindow.showMaximized()
                windowStatus = 1
                windowMargin = 0
                //Resize visibility
                resizeLeft.visible = false
                resizeRight.visible = false
                resizeBottom.visible = false
                resizeWindow.visible = false
                btnMaximizeRestore.btnIconSource = "../images/svg_images/restore_icon.svg"
            }else{
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                //Resize visibility
                internal.resetResizeBorder()
                btnMaximizeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function ifMaximizedWindowRestore(){
            if(windowStatus == 1){
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                btnMaximizeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
            }
        }

        function restoreMargins(){
            windowStatus = 0
            windowMargin = 10
            btnMaximizeRestore.btnIconSource = "../images/svg_images/maximize_icon.svg"
        }

        function collapseWindow(window){
            if(windowCollapse == false){
                btnColapse.btnIconSource = "../images/svg_images/down_icon.svg"
                windowCollapse = true
            }else{
                btnColapse.btnIconSource = "../images/svg_images/up_icon.svg"
                windowCollapse = false
            }
        }
    }


    PropertyAnimation{
        id: animationColapse
        target: mainWindow
        property: "height"
        to: if(mainWindow.height == 80) return 680; else return 80
        duration: 0
    }


    Rectangle {
        id: bg
        height: 660
        color: "#190000"
        border.color: "#000000"
        border.width: 0
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.topMargin: 10
        clip: true
        anchors.bottomMargin: 10

        Rectangle {
            id: appContainer
            visible: true
            color: "#00000000"
            border.width: 0
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.leftMargin: 1
            anchors.bottomMargin: 1
            anchors.topMargin: 1

            Rectangle {
                id: topBar
                height: 60
                color: "#000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                z: 2
                anchors.topMargin: 0
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                ToggleButton {
                    id: toggleBtn
                    enabled: true
                    btnColorClicked: "#710002"
                    btnColorMouseOver: "#2e0001"
                    btnColorDefault: "#000000"
                    onClicked: {
                        // Collapsed
                        if(mainWindow.height == 80){
                            animationMenu.running = false
                            animationColapse.running = true
                            leftMenu.width = 180
                            WindowManager.toggleAlwaysOnTop()

                        // Uncollapsed
                        }else{
                            animationMenu.running = true
                            animationColapse.running = false
                        }
                    }

                    PropertyAnimation {
                        id: animationLockToggleBtn
                        target: toggleBtn
                        property: "enabled"
                        to: if(toggleBtn.enabled == true) return false; else return true
                        duration: 100
                    }

                    PropertyAnimation{
                        id: animationCollapseToggleBtn
                        target: leftMenu
                        property: "width"
                        to: if(leftMenu.width == 180) return 70; else return 70
                        duration: 100
                    }

                }

                Rectangle {
                    id: topBarDescription
                    color: "#260001"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: rowBtns.bottom
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 1
                    anchors.rightMargin: 0
                    anchors.leftMargin: 70
                    anchors.bottomMargin: 0

                    Label {
                        id: labelTopInfo
                        color: "#7c6768"
                        text: qsTr("Reachable Texts")
                        anchors.left: parent.left
                        anchors.right: labelDate.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 10
                        anchors.topMargin: 0
                    }

                    Label {
                        id: labelDate
                        color: "#7c6768"
                        text: qsTr("Date")
                        anchors.left: labelTopInfo.right
                        anchors.right: labelRight.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        anchors.leftMargin: 50
                        anchors.rightMargin: 5
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                    }

                    Label {
                        id: labelRight
                        width: 40
                        color: "#7c6768"
                        text: qsTr("| HOME")
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignRight
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 10
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                    }
                }

                Rectangle {
                    id: titleBar
                    height: 35
                    color: "#00000000"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.right: rowBtns.left
                    anchors.top: parent.top
                    anchors.leftMargin: 70
                    anchors.rightMargin: 1
                    anchors.topMargin: 0

                    DragHandler{
                        onActiveChanged: if(active){
                                             mainWindow.startSystemMove()
                                         }
                    }


                    Image {
                        id: iconApp
                        width: 22
                        height: 22
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        source: "../images/svg_images/icon_app_top.svg"
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 5
                        anchors.topMargin: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Label {
                        id: label
                        color: "#ebc2c4"
                        text: qsTr("TEXTSAVER")
                        anchors.left: iconApp.right
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 10
                        anchors.leftMargin: 5
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                    }
                }

                Row {
                    id: rowBtns
                    visible: true
                    anchors.right: parent.right
                    anchors.top: parent.top
                    spacing: 1
                    anchors.topMargin: 0
                    anchors.rightMargin: 1

                    TopBarButton {
                        id: btnColapse
                        width: 35
                        btnIconSource: "../images/svg_images/up_icon.svg"
                        btnColorDefault: "#110000"
                        btnColorClicked: "#611415"
                        btnColorMouseOver: "#2e0001"
                        onClicked: {

                            WindowManager.toggleAlwaysOnTop()
                            animationColapse.running = true
                            // animationLockToggleBtn.running = true
                            animationCollapseToggleBtn.running = true
                            internal.collapseWindow()
                        }
                    }

                    TopBarButton{
                        id: btnMinimize
                        width: 35
                        btnColorMouseOver: "#2e0001"
                        btnColorClicked: "#611415"
                        btnColorDefault: "#110000"
                        //minimize function
                        onClicked: {
                            mainWindow.showMinimized()
                            internal.restoreMargins()
                        }

                    }

                    TopBarButton {
                        id: btnMaximizeRestore
                        width: 35
                        btnIconSource: "../images/svg_images/maximize_icon.svg"
                        btnColorDefault: "#110000"
                        btnColorClicked: "#611415"
                        btnColorMouseOver: "#2e0001"
                        //maximize and restore function
                        onClicked: internal.maximizedRestore()

                    }

                    TopBarButton {
                        id: btnClose
                        width: 35
                        btnIconSource: "../images/svg_images/close_icon.svg"
                        btnColorDefault: "#110000"
                        btnColorClicked: "#d00007"
                        btnColorMouseOver: "#2e0001"
                        //close function
                        onClicked: mainWindow.close()
                    }

                }
            }

            Rectangle {
                id: content
                color: "#00000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: topBar.bottom
                anchors.bottom: parent.bottom
                anchors.rightMargin: 0
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                z: 0

                Rectangle {
                    id: leftMenu
                    width: 70
                    color: "#000000"
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0

                    PropertyAnimation{
                        id: animationMenu
                        target: leftMenu
                        property: "width"
                        to: if(leftMenu.width == 70) return 180; else return 70
                        duration: 400
                        easing.type: Easing.InOutBack
                    }

                    Column {
                        id: columnMenus
                        width: 250
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.bottomMargin: 90
                        anchors.topMargin: 0

                        LeftMenuBtn {
                            id: btnHome
                            width: leftMenu.width
                            text: qsTr("Home")
                            font.family: "Tahoma"
                            font.pointSize: 9
                            isActiveMenu: true
                            onClicked: {
                                btnHome.isActiveMenu = true
                                btnSettings.isActiveMenu = false
                                //stackView.push(Qt.resolvedUrl("pages/homePage.qml"))
                                pagesHome.setSource(Qt.resolvedUrl(("pages/homePage.qml")))
                            }
                        }

                        LeftMenuBtn {
                            id: btnOpen
                            width: leftMenu.width
                            text: qsTr("Open")
                            btnIconSource: "../images/svg_images/open_icon.svg"
                            font.family: "Tahoma"
                            font.pointSize: 9
                            isActiveMenu: false
                        }

                        LeftMenuBtn {
                            id: btnSave
                            width: leftMenu.width
                            text: qsTr("Save")
                            btnIconSource: "../images/svg_images/save_icon.svg"
                            font.family: "Tahoma"
                            font.pointSize: 9
                            isActiveMenu: false
                        }
                    }

                    LeftMenuBtn {
                        id: btnSettings
                        x: 0
                        y: 180
                        width: leftMenu.width
                        text: qsTr("Settings")
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 25
                        btnIconSource: "../images/svg_images/settings_icon.svg"
                        font.pointSize: 9
                        isActiveMenu: false
                        font.family: "Tahoma"
                        onClicked: {
                            btnHome.isActiveMenu = false
                            btnSettings.isActiveMenu = true
                            // stackView.push(Qt.resolvedUrl("pages/settingsPage.qml"))
                            pagesSettings.setSource(Qt.resolvedUrl(("pages/settingsPage.qml")))
                        }
                    }
                }

                Rectangle {
                    id: contentPages
                    color: "#190000"
                    border.width: 0
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 25
                    anchors.leftMargin: 0

//                    StackView {
//                        id: stackView
//                        anchors.fill: parent
//                        initialItem: Qt.resolvedUrl(("pages/homePage.qml"))
//                    }

                    Loader{
                        id: pagesHome
                        anchors.fill: parent
                        source: Qt.resolvedUrl(("pages/homePage.qml"))
                        visible: {
                            if(btnHome.isActiveMenu == true){
                                return true
                            }else{
                                return false
                            }
                        }
                    }

                    Loader{
                        id: pagesSettings
                        anchors.fill: parent
                        source: Qt.resolvedUrl(("pages/settingsPage.qml"))
                        visible: {
                            if(btnSettings.isActiveMenu == true){
                                 return true
                            }else{
                                return false
                            }
                        }
                    }
                }

                Rectangle {
                    id: footerInfo
                    color: "#260001"
                    anchors.left: leftMenu.right
                    anchors.right: parent.right
                    anchors.top: contentPages.bottom
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0

                    Label {
                        id: labelBottomInfo
                        color: "#7c6768"
                        text: qsTr("Version 1.0 - Developed by David Castagneto A. - MIT License")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 30
                        anchors.leftMargin: 10
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                    }

                    MouseArea {
                        id: resizeWindow
                        x: 884
                        y: 1
                        width: 25
                        height: 25
                        opacity: 0.5
                        anchors.right: parent.right
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.rightMargin: 0
                        cursorShape: Qt.SizeFDiagCursor

                        DragHandler{
                            target: null
                            onActiveChanged: if(active){
                                                 mainWindow.startSystemResize(Qt.RightEdge | Qt.BottomEdge)
                                             }
                        }

                        Image {
                            id: resizeImage
                            width: 16
                            height: 16
                            anchors.fill: parent
                            source: "../images/svg_images/resize_icon.svg"
                            anchors.leftMargin: 5
                            anchors.topMargin: 5
                            sourceSize.height: 16
                            sourceSize.width: 16
                            fillMode: Image.PreserveAspectFit
                            antialiasing: false
                        }
                    }
                }

            }

        }
    }

    MouseArea {
        id: resizeLeft
        x: 990
        y: 20
        width: 10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.leftMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler{
            target: null
            onActiveChanged: if(active){ mainWindow.startSystemResize(Qt.LeftEdge) }
        }
    }

    MouseArea {
        id: resizeRight
        width: 10
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        cursorShape: Qt.SizeHorCursor

        DragHandler{
            target: null
            onActiveChanged: if(active){ mainWindow.startSystemResize(Qt.RightEdge) }
        }

    }

    MouseArea {
        id: resizeBottom
        height: 10
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.bottomMargin: 0
        cursorShape: Qt.SizeVerCursor

        DragHandler{
            target: null
            onActiveChanged: if(active){ mainWindow.startSystemResize(Qt.BottomEdge) }
        }
    }

    Connections{
        target: backend

        function onPrintTime(time){
            labelDate.text = time
        }

        ////For Show/Hide something
        //function onIsVisible(isVisible){
            //rectangleVisible.visible = isVisible
        //}

    }

}










