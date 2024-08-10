cmake_minimum_required(VERSION 3.20)

set(SUBDIR_SRC "startSvr")
get_filename_component(ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}" DIRECTORY)
set(BIN_DIR ${ROOT_DIR}/bin)
set(LIB_DIR ${ROOT_DIR}/lib)
set(CMAKE_HEAD ${ROOT_DIR}/CmakeHead)
set(CMAKE_BUILD_TYPE Debug)
add_subdirectory(${SUBDIR_SRC})