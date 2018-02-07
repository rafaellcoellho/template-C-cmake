cmake_minimum_required(VERSION 3.5)
project(template_C_cmake)

if(DEFINED ENV{CPPUTEST_HOME})
	message("CppUTest found in $ENV{CPPUTEST_HOME}")
else()
	message("CPPUTEST_HOME is not set; You must tell Cmake where to find CppUTest")
	return()
endif()

include_directories(src)

file(GLOB SOURCES "src/*.c")

add_executable(template_C_cmake ${SOURCES})
