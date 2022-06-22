# Example toolchain file for kobo
# Use with "-DCMAKE_TOOLCHAIN_FILE=../kobo.cmake" for anything that uses cmake, it should work
# https://stackoverflow.com/questions/5098360/cmake-specifying-build-toolchain
# the name of the target operating system
set(CMAKE_SYSTEM_NAME Linux)

# which compilers to use for C and C++
set(CMAKE_C_COMPILER   arm-kobo-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-kobo-linux-gnueabihf-g++)

# where is the target environment located
set(CMAKE_FIND_ROOT_PATH  /mnt/HDD/Project/qt-kobo/x-tools/arm-kobo-linux-gnueabihf/ )

# adjust the default behavior of the FIND_XXX() commands:
# search programs in the host environment
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# search headers and libraries in the target environment
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# https://stackoverflow.com/questions/53633705/cmake-the-c-compiler-is-not-able-to-compile-a-simple-test-program
