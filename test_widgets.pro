QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17
DESTDIR = ../bin

SOURCES += \
    src/item_delegate.cpp \
    src/item_widget.cpp \
    src/list_view.cpp \
    src/list_widget.cpp \
    src/main.cpp \
    src/main_window.cpp

HEADERS += \
    inc/item_data.h \
    inc/item_delegate.h \
    inc/item_widget.h \
    inc/list_view.h \
    inc/list_widget.h \
    inc/main_window.h

FORMS += \
    forms/item_widget.ui \
    forms/main_window.ui

RESOURCES += \
    assets/user_icons/user_icons.qrc

INCLUDEPATH += inc

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
