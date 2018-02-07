if(DEFINED ENV{CPPUTEST_HOME})
	message("CppUTest found in $ENV{CPPUTEST_HOME}")
	set(CPPUTEST_INCLUDE_DIRS /usr/local/include/CppUTest)
	set(CPPUTEST_LIBRARIES /usr/local/lib)
else()
	message("CPPUTEST_HOME is not set")
	return()
endif()

include_directories(${CPPUTEST_INCLUDE_DIRS})
include_directories(../src/)

add_library(CppUTest STATIC IMPORTED)
set_property(TARGET CppUTest PROPERTY IMPORTED_LOCATION ${CPPUTEST_LIBRARIES}/libCppUTest.a)

add_library(ExampleTest ExampleTest.cpp)

add_executable(RunAllTests AllTests.cpp)
target_link_libraries(RunAllTests CppUTest ExampleTest helloWorld)
