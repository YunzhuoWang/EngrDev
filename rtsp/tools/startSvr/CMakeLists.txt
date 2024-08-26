cmake_minimum_required(VERSION 3.20)

# 设置项目名称和版本
project(startSvr VERSION 1.0)
set(EXTERN_SHARED_OBJECT SvrFrame)
# 设置C++标准为C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
include(${CMAKE_HEAD}/execute.cmake)