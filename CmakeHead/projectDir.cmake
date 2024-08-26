macro(add_all_subdir)
    # 从LD_LIBRARY_PATH中分割目录，添加链接路径
    execute_process(COMMAND bash -c "echo $LD_LIBRARY_PATH" OUTPUT_VARIABLE LD_LIBRARY_PATH_OUTPUT OUTPUT_STRIP_TRAILING_WHITESPACE)
    string(REPLACE ":" ";" LD_LIBRARY_PATH_LIST ${LD_LIBRARY_PATH_OUTPUT})
    foreach(path ${LD_LIBRARY_PATH_LIST})
        link_directories("${path}")
    endforeach()

    # 根目录添加所有需要编译的子目录
    foreach(SUBDIR IN LISTS SUBDIR_SRC)
        message(${CMAKE_CURRENT_SOURCE_DIR}/${SUBDIR}/)
        add_subdirectory(${SUBDIR})
    endforeach()


    # 将代码头文件rtsp/include拷贝到头文件目录，此行为的目的是为了代码include时方便
    set(SOURCE_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/include")
    set(TARGET_INCLUDE_DIR "${ROOT_DIR}/include")
    file(GLOB_RECURSE INCLUDE_FILES "${SOURCE_INCLUDE_DIR}/*")
    set(FILTERED_INCLUDE_FILES_AND_SOURCES "")
    foreach(FILE_PATH ${INCLUDE_FILES})
        if(NOT "${FILE_PATH}" MATCHES ".*/CMakeLists\\.txt$")
            file(RELATIVE_PATH REL_PATH "${SOURCE_INCLUDE_DIR}" "${FILE_PATH}")
            set(TARGET_PATH "${TARGET_INCLUDE_DIR}/${REL_PATH}")
            list(APPEND FILTERED_INCLUDE_FILES_AND_SOURCES "${TARGET_PATH}=${FILE_PATH}")
        endif()
    endforeach()
    foreach(PAIR ${FILTERED_INCLUDE_FILES_AND_SOURCES})
        string(REPLACE "=" ";" PAIR_LIST "${PAIR}")
        list(GET PAIR_LIST 0 TARGET_PATH)
        list(GET PAIR_LIST 1 FILE_PATH)
        # 创建目标目录
        get_filename_component(TARGET_DIR "${TARGET_PATH}" DIRECTORY)
        file(MAKE_DIRECTORY "${TARGET_DIR}")
        # 拷贝文件
        file(COPY "${FILE_PATH}" DESTINATION "${TARGET_DIR}")
    endforeach()
    include_directories("${TARGET_INCLUDE_DIR}")
endmacro()
add_all_subdir()