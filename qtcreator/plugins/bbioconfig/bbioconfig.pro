DEFINES += BBIOCONFIG_LIBRARY

include(../../../paths.pri)
include(../../../3rdparty/BBIOConfig/BBIOConfig.pri)

# BBIOConfig files

SOURCES += bbioconfigplugin.cpp \
    bbioconfigfactory.cpp \
    bbioconfig.cpp \
    bbioconfigfile.cpp \
    bbioconfigactionhandler.cpp

HEADERS += bbioconfigplugin.h \
        bbioconfig_global.h \
        bbioconfigconstants.h \
    bbioconfigfactory.h \
    bbioconfig.h \
    bbioconfigfile.h \
    bbioconfigactionhandler.h

QT += quick qml

# Qt Creator linking

## set the QTC_SOURCE environment variable to override the setting here
QTCREATOR_SOURCES = $$(QTC_SOURCE)
isEmpty(QTCREATOR_SOURCES):QTCREATOR_SOURCES=$$QTCREATOR_SOURCE_DIR

## set the QTC_BUILD environment variable to override the setting here
IDE_BUILD_TREE = $$(QTC_BUILD)
isEmpty(IDE_BUILD_TREE):IDE_BUILD_TREE=$$QTCREATOR_INSTALL_DIR

## uncomment to build plugin into user config directory
## <localappdata>/plugins/<ideversion>
##    where <localappdata> is e.g.
##    "%LOCALAPPDATA%\QtProject\qtcreator" on Windows Vista and later
##    "$XDG_DATA_HOME/data/QtProject/qtcreator" or "~/.local/share/data/QtProject/qtcreator" on Linux
##    "~/Library/Application Support/QtProject/Qt Creator" on Mac
# USE_USER_DESTDIR = yes

PROVIDER = Machinekit

###### If the plugin can be depended upon by other plugins, this code needs to be outsourced to
###### <dirname>_dependencies.pri, where <dirname> is the name of the directory containing the
###### plugin's sources.

QTC_PLUGIN_NAME = BBIOConfig
QTC_LIB_DEPENDS += \
    aggregation \
    extensionsystem \
    utils
    # nothing here at this time

QTC_PLUGIN_DEPENDS += \
    coreplugin

QTC_PLUGIN_RECOMMENDS += \
    # optional plugin dependencies. nothing here at this time

###### End _dependencies.pri contents ######

include($$QTCREATOR_SOURCES/src/qtcreatorplugin.pri)

RESOURCES += \
    bbioconfig.qrc

OTHER_FILES += \
    test.bbio

INSTALLS =
