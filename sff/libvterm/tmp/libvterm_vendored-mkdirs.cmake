# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/mnt/HDD/Project/compile/sff/ext/libvterm"
  "/mnt/HDD/Project/compile/sff/libvterm/src/libvterm_vendored-build"
  "/mnt/HDD/Project/compile/sff/libvterm"
  "/mnt/HDD/Project/compile/sff/libvterm/tmp"
  "/mnt/HDD/Project/compile/sff/libvterm/src/libvterm_vendored-stamp"
  "/mnt/HDD/Project/compile/sff/libvterm/src"
  "/mnt/HDD/Project/compile/sff/libvterm/src/libvterm_vendored-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/mnt/HDD/Project/compile/sff/libvterm/src/libvterm_vendored-stamp/${subDir}")
endforeach()
