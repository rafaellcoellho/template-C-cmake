add_library(helloWorld helloWorld.c)

add_executable(template_C_cmake main.c)
target_link_libraries(template_C_cmake helloWorld)
