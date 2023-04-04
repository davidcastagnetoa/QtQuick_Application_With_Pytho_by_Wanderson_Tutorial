## This Python file uses the following encoding: utf-8
import sys
import os
import datetime

from PySide2.QtCore import QObject, Qt, Slot, Signal, QUrl, QTimer
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject


class MainWindow(QObject):
    def __init__(self):
        QObject.__init__(self)

        # QTimer - Run Timer
        self.timer = QTimer()
        self.timer.timeout.connect(lambda: self.setTime())
        self.timer.start(1000)

    # Signal Set Data
    printTime = Signal(str)

    # Set Timer Function
    def setTime(self):
        now = datetime.datetime.now()
        formatDate = now.strftime("%H:%M:%S %p - %d/%m/%Y")
        print(formatDate)
        self.printTime.emit(formatDate)


class WindowManager(QObject):
    def __init__(self, window):
        super().__init__()
        self.window = window
        self.alwaysOnTop = False

    @Slot(bool)
    def setAlwaysOnTop(self, on_top):
        if on_top:
            self.window.setFlags(Qt.Window | Qt.FramelessWindowHint | Qt.WindowStaysOnTopHint)
            self.alwaysOnTop = True
        else:
            self.window.setFlags(Qt.Window | Qt.FramelessWindowHint)
            self.alwaysOnTop = False
        self.window.show()

    @Slot()
    def toggleAlwaysOnTop(self):
        self.setAlwaysOnTop(not self.alwaysOnTop)


class CardCreator(QObject):
    def __init__(self):
        QObject.__init__(self)

    @Slot()
    def createNewCardBg(self):
        if self.cardBg:
            newCard = self.cardBg.createComponent()
            if newCard:
                newCard.createObject(self.cardBg.parent())


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # Get Context
    main = MainWindow()
    engine.rootContext().setContextProperty("backend", main)

    # Load QML File
    engine.load(os.path.join(os.path.dirname(__file__), "qml/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)

    window = engine.rootObjects()[0]
    window_manager = WindowManager(window)
    engine.rootContext().setContextProperty("WindowManager", window_manager)

    sys.exit(app.exec_())

#Genera una funcion que guarde en el portapapeles un texto en textField.text al pulsar un boton de un componente qml con id copyBtn