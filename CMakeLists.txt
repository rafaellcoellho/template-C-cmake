cmake_minimum_required(VERSION 3.5)

project(template_C_cmake)

file(GLOB SOURCES "src/*.c")

add_executable(template_C_cmake ${SOURCES})
