set(SOURCES_MODULES_LIB
	helloWorld.c)

add_library(${APP_LIB_NAME} ${SOURCES_MODULES_LIB})

add_executable(${APP_NAME} main.c)
target_link_libraries(${APP_NAME} ${APP_LIB_NAME})
