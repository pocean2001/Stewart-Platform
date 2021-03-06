#-------------------------------------------------
#
# Project created by QtCreator 2018-01-25T11:11:08
#
#-------------------------------------------------

QT += core gui serialport

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = GUI
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += \
    QT_DEPRECATED_WARNINGS \
    QT_USE_QSTRINGBUILDER

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    stewart_platform.cpp \
    serial_settings_dialog.cpp \
    leap_event_listener.cpp

HEADERS += \
    stewart_platform.h \
    serial_settings_dialog.h \
    leap_event_listener.h

FORMS += \
    stewart_platform.ui \
    serial_settings_dialog.ui

INCLUDEPATH += \
    $$(LEAP_SDK)

win32: LIBS += -L$$(LEAP_SDK)/lib/x64/ -lLeap

INCLUDEPATH += $$(LEAP_SDK)/lib/x64
DEPENDPATH += $$(LEAP_SDK)/lib/x64

win32:!win32-g++: PRE_TARGETDEPS += $$(LEAP_SDK)/lib/x64/Leap.lib
else:win32-g++: PRE_TARGETDEPS += $$(LEAP_SDK)/lib/x64/libLeap.a

macx: LIBS += -L$$(LEAP_SDK)/lib/ -lLeap

INCLUDEPATH += $$(LEAP_SDK)/include
DEPENDPATH += $$(LEAP_SDK)/include

macx: LIBS += -L$$PWD/../../../../Downloads/LeapDeveloperKit_2.3.1+31549_mac/LeapSDK/lib/ -lLeap

INCLUDEPATH += $$PWD/../../../../Downloads/LeapDeveloperKit_2.3.1+31549_mac/LeapSDK
DEPENDPATH += $$PWD/../../../../Downloads/LeapDeveloperKit_2.3.1+31549_mac/LeapSDK
