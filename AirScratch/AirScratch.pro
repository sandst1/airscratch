# Add more folders to ship with the application, here
folder_01.source = qml/AirScratch
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

# If your application uses the Qt Mobility libraries, uncomment the following
# lines and add the respective components to the MOBILITY variable.
# CONFIG += mobility
# MOBILITY +=

INCLUDEPATH += ./include

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += \
    src/main.cpp \
    src/Scratcher.cpp \
    src/Sys.cpp \
    src/scratchcontroller.cpp \
    riaafilter.cpp \
    src/leaplistener.cpp \
    src/audiograph.cpp

# Installation path
# target.path =

# Please do not modify the following two lines. Required for deployment.
include(qtquick2applicationviewer/qtquick2applicationviewer.pri)
qtcAddDeployment()

HEADERS += \
    src/Scratcher.h \
    src/Sys.h \
    src/scratchcontroller.h \
    riaafilter.h \
    src/leaplistener.h \
    src/audiograph.h

unix:!macx: LIBS += -L$$PWD/lib/ -lbass

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

unix:!macx: LIBS += -L$$PWD/lib/ -lLeap

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include
