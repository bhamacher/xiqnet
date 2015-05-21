######################################################################
# Automatically generated by qmake (2.01a) Tue Nov 12 10:08:53 2013
######################################################################

TEMPLATE = lib

exists( ../../project-paths.pri ) {
  include(../../project-paths.pri)
}



VERSION = 0.0.1

TARGET = xiqnet

QT += network

DEFINES += XIQNET_LIBRARY

unix:LIBS += -lprotobuf

android:LIBS+= -L/home/samuel/tmp/android-protobuf/android_libs/protobuf/obj/local/armeabi-v7a/ -lprotobuf
android:INCLUDEPATH+="/home/samuel/tmp/android-protobuf/android_libs/protobuf/jni/src/"

# Input
PUBLIC_HEADERS = \
                 xiqnet_global.h \
                 xiqnetpeer.h \
                 xiqnetserver.h \
                 xiqnetwrapper.h

HEADERS += \
           $$PUBLIC_HEADERS \
           xiqnetpeerprivate.h \
           xiqnetserverprivate.h

SOURCES += \
    xiqnetpeer.cpp \
    xiqnetpeerprivate.cpp \
    xiqnetserver.cpp \
    xiqnetserverprivate.cpp


target.path = /usr/lib

header_files.files = $$PUBLIC_HEADERS
header_files.path = /usr/include
INSTALLS += header_files
INSTALLS += target

QMAKE_CXXFLAGS += -Wall -Wfloat-equal -std=c++0x