PROJECT_NAME = qmlmessages
QT += dbus declarative svg

VERSION = 5.1

CONFIG += link_pkgconfig
PKGCONFIG += TelepathyQt5

target.path = $$INSTALL_ROOT/usr/bin
INSTALLS += target

SOURCES += main.cpp \
    windowmanager.cpp \
    dbusadaptor.cpp \
    eventfilter.cpp

HEADERS += windowmanager.h \
    dbusadaptor.h \
    eventfilter.h

RESOURCES += ../res/res.qrc ../qml/qml.qrc

# do not edit below here
TEMPLATE = app
CONFIG -= app_bundle
TARGET = $$PROJECT_NAME

CONFIG += link_pkgconfig

packagesExist(qdeclarative-boostable-qt5) {
    warning("Building with qdeclarative-boostable support")
    DEFINES += HAS_BOOSTER
    PKGCONFIG += qdeclarative-boostable-qt5
} else {
    warning("qdeclarative-boostable not available; startup times will be slower")
}

