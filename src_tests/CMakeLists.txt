set(TEST_SOURCES
	AllTests.cpp
	ExampleTest.cpp)

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
set_property(TARGET CppUTest
		PROPERTY IMPORTED_LOCATION ${CPPUTEST_LIBRARIES}/libCppUTest.a)

add_executable(RunAllTests ${TEST_SOURCES})
target_link_libraries(RunAllTests CppUTest ${APP_LIB_NAME})
