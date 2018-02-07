cmake_minimum_required(VERSION 3.5)
project(template_C_cmake)

if(DEFINED ENV{CPPUTEST_HOME})
	message("CppUTest found in $ENV{CPPUTEST_HOME}")
else()
	message("CPPUTEST_HOME is not set")
	return()
endif()

enable_language(C)

set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR})

add_subdirectory(src)
add_subdirectory(src_tests)
