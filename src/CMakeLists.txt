set(SOURCES_MODULES_LIB
	helloWorld.c)

add_library(modules_lib ${SOURCES_MODULES_LIB})

add_executable(template_C_cmake main.c)
target_link_libraries(template_C_cmake modules_lib)
