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
CMAKE_SOURCE_DIR = "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/build"

# Include any dependencies generated for this target.
include CMakeFiles/FieldForge.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/FieldForge.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/FieldForge.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FieldForge.dir/flags.make

CMakeFiles/FieldForge.dir/main.cpp.o: CMakeFiles/FieldForge.dir/flags.make
CMakeFiles/FieldForge.dir/main.cpp.o: /home/stanislav/Desktop/NURE/works/3\ курс/2\ семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/main.cpp
CMakeFiles/FieldForge.dir/main.cpp.o: CMakeFiles/FieldForge.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FieldForge.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FieldForge.dir/main.cpp.o -MF CMakeFiles/FieldForge.dir/main.cpp.o.d -o CMakeFiles/FieldForge.dir/main.cpp.o -c "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/main.cpp"

CMakeFiles/FieldForge.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FieldForge.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/main.cpp" > CMakeFiles/FieldForge.dir/main.cpp.i

CMakeFiles/FieldForge.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FieldForge.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/main.cpp" -o CMakeFiles/FieldForge.dir/main.cpp.s

# Object files for target FieldForge
FieldForge_OBJECTS = \
"CMakeFiles/FieldForge.dir/main.cpp.o"

# External object files for target FieldForge
FieldForge_EXTERNAL_OBJECTS =

FieldForge: CMakeFiles/FieldForge.dir/main.cpp.o
FieldForge: CMakeFiles/FieldForge.dir/build.make
FieldForge: CMakeFiles/FieldForge.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FieldForge"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FieldForge.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/FieldForge.dir/build: FieldForge
.PHONY : CMakeFiles/FieldForge.dir/build

CMakeFiles/FieldForge.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FieldForge.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FieldForge.dir/clean

CMakeFiles/FieldForge.dir/depend:
	cd "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot" "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot" "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/build" "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/build" "/home/stanislav/Desktop/NURE/works/3 курс/2 семестр/апз/apz-pzpi-21-8-holia-stanislav/Task3/fieldforge_iot/build/CMakeFiles/FieldForge.dir/DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/FieldForge.dir/depend

