cmake_minimum_required(VERSION 3.20)
set(SUBDIR_SRC "include")
list(APPEND SUBDIR_SRC "tools")
# 设置一些本代码仓的全局路径，包括bin目录，lib目录，include目录和cmakelist头文件目录
get_filename_component(ROOT_DIR "${CMAKE_CURRENT_SOURCE_DIR}" DIRECTORY)
set(BIN_DIR ${ROOT_DIR}/bin)
set(LIB_DIR ${ROOT_DIR}/lib)
set(INCLUDE_DIR ${ROOT_DIR}/include)
set(CMAKE_HEAD ${ROOT_DIR}/CmakeHead)
# 设置共享库和执行库的输出路径
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${LIB_DIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${BIN_DIR})
# 添加调试符号
set(CMAKE_BUILD_TYPE Debug)

include(${CMAKE_HEAD}/projectDir.cmake)