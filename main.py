## This Python file uses the following encoding: utf-8
import sys
import os

from PySide2.QtCore import QObject, Qt, Slot
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine


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



if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    engine.load(os.path.join(os.path.dirname(__file__), "qml/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)

    window = engine.rootObjects()[0]
    window_manager = WindowManager(window)
    engine.rootContext().setContextProperty("WindowManager", window_manager)

    sys.exit(app.exec_())

