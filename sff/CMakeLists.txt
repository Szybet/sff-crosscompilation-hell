cmake_minimum_required(VERSION 3.14.3 FATAL_ERROR)
project(sff VERSION 0.0.1 LANGUAGES CXX C)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -pthread")

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

if (NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "" FORCE)
endif()

set(warning_flags "-Wall -Wconversion -Werror -Wextra -fPIC")
string(REPLACE " " ";" cxx_warning_flags "${warning_flags}")
add_compile_options(
    "$<$<COMPILE_LANGUAGE:CXX>:${cxx_warning_flags}>"
)

set(USE_SANITIZE NO CACHE BOOL "Enable address sanitization at a 2x performance cost")
if (USE_SANITIZE)
    add_compile_options("$<$<COMPILE_LANGUAGE:CXX>:-fsanitize=address>")
    link_libraries(-fsanitize=address)
endif()

add_subdirectory(ext)

find_package(Qt5Widgets REQUIRED)
set(CMAKE_INCLUDE_CURRENT_DIR YES)
set(CMAKE_AUTOMOC YES)

#add_compile_options(-march=native)
#link_libraries(-pg -lprofiler)
#add_compile_options(-pg)

add_subdirectory(qvterm)
add_subdirectory(app)
