cmake_minimum_required(VERSION 3.5)
project(template_C_cmake)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR})

add_subdirectory(src)
add_subdirectory(src_tests)
