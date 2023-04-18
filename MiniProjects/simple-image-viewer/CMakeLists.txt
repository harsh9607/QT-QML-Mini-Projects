cmake_minimum_required(VERSION 3.16)

project(simple-image-viewer VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)


find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appsimple-image-viewer
    main.cpp
    Images.qrc

)

qt_add_qml_module(appsimple-image-viewer
    URI simple-image-viewer
    VERSION 1.0

    QML_FILES Main.qml Hoverbutton.qml

)

set_target_properties(appsimple-image-viewer PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appsimple-image-viewer
    PRIVATE Qt6::Quick
)

install(TARGETS appsimple-image-viewer
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
