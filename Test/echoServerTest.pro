QT += testlib core network
QT -= gui

CONFIG += qt console warn_on depend_includepath testcase
CONFIG -= app_bundle

TEMPLATE = app

SOURCES +=  tst_functions.cpp \
    ../ExaMZ/functions.cpp \
    ../ExaMZ/mytcpserver-ex.cpp

HEADERS += \
    ../ExaMZ/functions.h \
    ../ExaMZ/mytcpserver-ex.h

TARGET = hallServer
