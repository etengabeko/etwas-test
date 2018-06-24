TEMPLATE = app
PROJECT = fzk2
TARGET = $$PROJECT

QT = \
    core \
    gui \
    network \
    widgets

CONFIG += warn_on

win32-msvc* {
    CONFIG += c++11 console
    DEFINES += "NOEXCEPT=throw()"
}
else {
    QMAKE_CXXFLAGS *= -Wall -Wextra -Werror -pedantic-errors
    QMAKE_CXXFLAGS += -std=c++11
    DEFINES += "NOEXCEPT=noexcept"
}

BUILD_DIR = $$PWD/build
OBJECTS_DIR = $$BUILD_DIR/obj
MOC_DIR = $$BUILD_DIR/moc
UI_DIR = $$BUILD_DIR/ui
DESTDIR = $$BUILD_DIR/bin

isEmpty(PREFIX) {
    PREFIX = $$PWD
    CONFIG_PATH = $$PREFIX/config
}
else {
    CONFIG_PATH = $$PREFIX/etc/$$PROJECT
    DEFINES += CONFIG_PATH=\\\"$$CONFIG_PATH\\\"
}

# installs
target.path = $$PREFIX/bin

# config
OTHER_FILES += $$PWD/config/settings.xml
config.path = $$PREFIX/etc/$$PROJECT
config.files += $$OTHER_FILES

INCLUDEPATH += $$PWD/src

HEADERS = \
    # logger
    $$PWD/src/logger/logger.h \
    # protocol
    $$PWD/src/protocol/protocol.h \
    $$PWD/src/protocol/protocol_private.h \
    $$PWD/src/protocol/types.h \
    # settings
    $$PWD/src/settings/settings.h \
    $$PWD/src/settings/settings_private.h \
    # ioservice
    $$PWD/src/ioservice/transport.h \
    $$PWD/src/ioservice/transport_private.h \
    $$PWD/src/ioservice/inputcontroller.h \
    $$PWD/src/ioservice/inputcontroller_private.h \
    $$PWD/src/ioservice/outputcontroller.h \
    $$PWD/src/ioservice/outputcontroller_private.h \
    # ui
    $$PWD/src/ui/connectionoptionsdialog.h \
    $$PWD/src/ui/controlpanelwidget.h \
    $$PWD/src/ui/createmessageswidget.h \
    $$PWD/src/ui/displaycontrolwidget.h \
    $$PWD/src/ui/displayoptionswidget.h \
    $$PWD/src/ui/mainwindow.h

SOURCES = \
    # logger
    $$PWD/src/logger/logger.cpp \
    # protocol
    $$PWD/src/protocol/protocol.cpp \
    $$PWD/src/protocol/protocol_private.cpp \
    # settings
    $$PWD/src/settings/settings.cpp \
    $$PWD/src/settings/settings_private.cpp \
    # ioservice
    $$PWD/src/ioservice/transport.cpp \
    $$PWD/src/ioservice/transport_private.cpp \
    $$PWD/src/ioservice/inputcontroller.cpp \
    $$PWD/src/ioservice/inputcontroller_private.cpp \
    $$PWD/src/ioservice/outputcontroller.cpp \
    $$PWD/src/ioservice/outputcontroller_private.cpp \
    # ui
    $$PWD/src/ui/connectionoptionsdialog.cpp \
    $$PWD/src/ui/controlpanelwidget.cpp \
    $$PWD/src/ui/createmessageswidget.cpp \
    $$PWD/src/ui/displaycontrolwidget.cpp \
    $$PWD/src/ui/displayoptionswidget.cpp \
    $$PWD/src/ui/mainwindow.cpp \
    # main
    $$PWD/src/main.cpp

FORMS = \
    $$PWD/src/ui/connectionoptions.ui \
    $$PWD/src/ui/controlpanel.ui \
    $$PWD/src/ui/createmessages.ui \
    $$PWD/src/ui/displaycontrol.ui \
    $$PWD/src/ui/displayoptions.ui

INSTALLS += \
    target \
    config
