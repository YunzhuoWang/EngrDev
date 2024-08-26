function(get_source_files_exclude_build result_var)

    set(src_files "")

    file(GLOB_RECURSE all_files RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "*.cpp" "*.hpp")

    foreach(file ${all_files})

        # 获取文件所在目录的相对路径

        get_filename_component(file_dir "${file}" DIRECTORY)

        # 检查目录是否是build，不是则添加到源文件列表
        string(FIND "${file_dir}" "build/" build_position)

        if(${build_position} EQUAL -1)
            list(APPEND src_files "${file}")
        endif ()
    endforeach()

    # 将结果设置到父作用域中的变量
    set(${result_var} ${src_files} PARENT_SCOPE)
    message("Source files (excluding build directory): ${SRC_FILES}")

endfunction()