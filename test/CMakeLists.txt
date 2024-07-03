cmake_minimum_required(VERSION 3.19)

# Create the testing project
project(cpp_starter_unittest CXX)

set (AUX_TEST_FILES
    test_example.cpp
)

set(SOURCE_INCLUDE_DIRS
    ${CMAKE_CURRENT_LIST_DIR}/../src/inc
)

set(SOURCE_AUX_FILES
)

set(AUX_TEST_INCLUDES
    ${CMAKE_CURRENT_LIST_DIR}/inc
)

find_package(GTest REQUIRED)

add_executable(cpp_starter_unittest test_main.cpp ${SOURCE_AUX_FILES} ${AUX_TEST_FILES})

target_include_directories(cpp_starter_unittest
    PUBLIC
    ${SOURCE_INCLUDE_DIRS}
    ${AUX_TEST_INCLUDES}
)

target_link_libraries(cpp_starter_unittest
    PRIVATE
    GTest::gtest
    GTest::gtest_main
)
add_test(cpp_starter_project_unittest cpp_starter_unittest)

