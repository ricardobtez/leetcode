
cmake_minimum_required (VERSION 3.19)

set(CPP_STARTER_ROOT_DIR ${CMAKE_CURRENT_SOURCE_DIR})

set(CPP_STARTER_INCLUDE_DIRS
    ${CPP_STARTER_ROOT_DIR}
    ${CPP_STARTER_ROOT_DIR}/inc
)

set(CPP_STARTER_SOURCE_CODE
    ${CPP_STARTER_ROOT_DIR}/example.cpp
)

find_package(fmt REQUIRED)

# Add source to this project's executable.
add_executable(cpp_starter_project main.cpp ${CPP_STARTER_SOURCE_CODE})
target_include_directories(cpp_starter_project PUBLIC ${CPP_STARTER_INCLUDE_DIRS})
target_link_libraries(cpp_starter_project
    PUBLIC
    fmt::fmt
    PRIVATE
    project_warnings
    project_options
)

