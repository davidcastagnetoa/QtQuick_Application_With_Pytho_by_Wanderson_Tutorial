## This Python file uses the following encoding: utf-8
import sys
import os

from PySide2.QtCore import QObject, Qt, Slot, QUrl, QTimer
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject


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

    @Slot()
    def button1Clicked(self):
        show_next_card()

    @Slot()
    def button2Clicked(self):
        hide_next_card()


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
    engine = QQmlApplicationEngine()\

    cardCreator = CardCreator()
    engine.rootContext().setContextProperty("cardCreator", cardCreator)

    engine.load(os.path.join(os.path.dirname(__file__), "qml/main.qml"))
    cardCreator.cardBg = engine.rootObjects()[0].findChild(QObject, "cardBg")

    if not engine.rootObjects():
        sys.exit(-1)

    window = engine.rootObjects()[0]
    window_manager = WindowManager(window)
    engine.rootContext().setContextProperty("WindowManager", window_manager)

    sys.exit(app.exec_())





