cmake_minimum_required(VERSION 3.19)
project(cpp-starter-project CXX)
include(CMake/StandardProjectSettings.cmake)

set(CMAKE_CXX_STANDARD 17)

add_library(project_options INTERFACE)

# Option specifications
option(ENABLE_TESTING "Enable Test Builds" ON)

# Link this 'library' to use the warnings specified in CompilerWarnings.cmake
add_library(project_warnings INTERFACE)

# standard compiler warnings
include(CMake/CompilerWarnings.cmake)
set_project_warnings(project_warnings)

#include sub-projects
add_subdirectory(src)

if(ENABLE_TESTING)
    enable_testing()
    add_subdirectory(test)
endif()

