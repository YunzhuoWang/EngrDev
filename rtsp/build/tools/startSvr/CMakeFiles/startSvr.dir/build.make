# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/abi/桌面/CodeRepository/EngrDev/rtsp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/abi/桌面/CodeRepository/EngrDev/rtsp/build

# Include any dependencies generated for this target.
include tools/startSvr/CMakeFiles/startSvr.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tools/startSvr/CMakeFiles/startSvr.dir/compiler_depend.make

# Include the progress variables for this target.
include tools/startSvr/CMakeFiles/startSvr.dir/progress.make

# Include the compile flags for this target's objects.
include tools/startSvr/CMakeFiles/startSvr.dir/flags.make

tools/startSvr/CMakeFiles/startSvr.dir/startSvr.cpp.o: tools/startSvr/CMakeFiles/startSvr.dir/flags.make
tools/startSvr/CMakeFiles/startSvr.dir/startSvr.cpp.o: /home/abi/桌面/CodeRepository/EngrDev/rtsp/tools/startSvr/startSvr.cpp
tools/startSvr/CMakeFiles/startSvr.dir/startSvr.cpp.o: tools/startSvr/CMakeFiles/startSvr.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/abi/桌面/CodeRepository/EngrDev/rtsp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/startSvr/CMakeFiles/startSvr.dir/startSvr.cpp.o"
	cd /home/abi/桌面/CodeRepository/EngrDev/rtsp/build/tools/startSvr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tools/startSvr/CMakeFiles/startSvr.dir/startSvr.cpp.o -MF CMakeFiles/startSvr.dir/startSvr.cpp.o.d -o CMakeFiles/startSvr.dir/startSvr.cpp.o -c /home/abi/桌面/CodeRepository/EngrDev/rtsp/tools/startSvr/startSvr.cpp

tools/startSvr/CMakeFiles/startSvr.dir/startSvr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/startSvr.dir/startSvr.cpp.i"
	cd /home/abi/桌面/CodeRepository/EngrDev/rtsp/build/tools/startSvr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/abi/桌面/CodeRepository/EngrDev/rtsp/tools/startSvr/startSvr.cpp > CMakeFiles/startSvr.dir/startSvr.cpp.i

tools/startSvr/CMakeFiles/startSvr.dir/startSvr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/startSvr.dir/startSvr.cpp.s"
	cd /home/abi/桌面/CodeRepository/EngrDev/rtsp/build/tools/startSvr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/abi/桌面/CodeRepository/EngrDev/rtsp/tools/startSvr/startSvr.cpp -o CMakeFiles/startSvr.dir/startSvr.cpp.s

# Object files for target startSvr
startSvr_OBJECTS = \
"CMakeFiles/startSvr.dir/startSvr.cpp.o"

# External object files for target startSvr
startSvr_EXTERNAL_OBJECTS =

/home/abi/桌面/CodeRepository/EngrDev/bin/startSvr: tools/startSvr/CMakeFiles/startSvr.dir/startSvr.cpp.o
/home/abi/桌面/CodeRepository/EngrDev/bin/startSvr: tools/startSvr/CMakeFiles/startSvr.dir/build.make
/home/abi/桌面/CodeRepository/EngrDev/bin/startSvr: tools/startSvr/CMakeFiles/startSvr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/abi/桌面/CodeRepository/EngrDev/rtsp/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/abi/桌面/CodeRepository/EngrDev/bin/startSvr"
	cd /home/abi/桌面/CodeRepository/EngrDev/rtsp/build/tools/startSvr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/startSvr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/startSvr/CMakeFiles/startSvr.dir/build: /home/abi/桌面/CodeRepository/EngrDev/bin/startSvr
.PHONY : tools/startSvr/CMakeFiles/startSvr.dir/build

tools/startSvr/CMakeFiles/startSvr.dir/clean:
	cd /home/abi/桌面/CodeRepository/EngrDev/rtsp/build/tools/startSvr && $(CMAKE_COMMAND) -P CMakeFiles/startSvr.dir/cmake_clean.cmake
.PHONY : tools/startSvr/CMakeFiles/startSvr.dir/clean

tools/startSvr/CMakeFiles/startSvr.dir/depend:
	cd /home/abi/桌面/CodeRepository/EngrDev/rtsp/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/abi/桌面/CodeRepository/EngrDev/rtsp /home/abi/桌面/CodeRepository/EngrDev/rtsp/tools/startSvr /home/abi/桌面/CodeRepository/EngrDev/rtsp/build /home/abi/桌面/CodeRepository/EngrDev/rtsp/build/tools/startSvr /home/abi/桌面/CodeRepository/EngrDev/rtsp/build/tools/startSvr/CMakeFiles/startSvr.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tools/startSvr/CMakeFiles/startSvr.dir/depend

