# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build"

# Include any dependencies generated for this target.
include _deps/eigen-build/test/CMakeFiles/swap_2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/eigen-build/test/CMakeFiles/swap_2.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/eigen-build/test/CMakeFiles/swap_2.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/eigen-build/test/CMakeFiles/swap_2.dir/flags.make

_deps/eigen-build/test/CMakeFiles/swap_2.dir/swap.cpp.obj: _deps/eigen-build/test/CMakeFiles/swap_2.dir/flags.make
_deps/eigen-build/test/CMakeFiles/swap_2.dir/swap.cpp.obj: _deps/eigen-build/test/CMakeFiles/swap_2.dir/includes_CXX.rsp
_deps/eigen-build/test/CMakeFiles/swap_2.dir/swap.cpp.obj: _deps/eigen-src/test/swap.cpp
_deps/eigen-build/test/CMakeFiles/swap_2.dir/swap.cpp.obj: _deps/eigen-build/test/CMakeFiles/swap_2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/eigen-build/test/CMakeFiles/swap_2.dir/swap.cpp.obj"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\EIGEN-~3\test && C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT _deps/eigen-build/test/CMakeFiles/swap_2.dir/swap.cpp.obj -MF CMakeFiles\swap_2.dir\swap.cpp.obj.d -o CMakeFiles\swap_2.dir\swap.cpp.obj -c "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\eigen-src\test\swap.cpp"

_deps/eigen-build/test/CMakeFiles/swap_2.dir/swap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/swap_2.dir/swap.cpp.i"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\EIGEN-~3\test && C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\eigen-src\test\swap.cpp" > CMakeFiles\swap_2.dir\swap.cpp.i

_deps/eigen-build/test/CMakeFiles/swap_2.dir/swap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/swap_2.dir/swap.cpp.s"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\EIGEN-~3\test && C:\msys64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\eigen-src\test\swap.cpp" -o CMakeFiles\swap_2.dir\swap.cpp.s

# Object files for target swap_2
swap_2_OBJECTS = \
"CMakeFiles/swap_2.dir/swap.cpp.obj"

# External object files for target swap_2
swap_2_EXTERNAL_OBJECTS =

_deps/eigen-build/test/swap_2.exe: _deps/eigen-build/test/CMakeFiles/swap_2.dir/swap.cpp.obj
_deps/eigen-build/test/swap_2.exe: _deps/eigen-build/test/CMakeFiles/swap_2.dir/build.make
_deps/eigen-build/test/swap_2.exe: _deps/eigen-build/test/CMakeFiles/swap_2.dir/linkLibs.rsp
_deps/eigen-build/test/swap_2.exe: _deps/eigen-build/test/CMakeFiles/swap_2.dir/objects1.rsp
_deps/eigen-build/test/swap_2.exe: _deps/eigen-build/test/CMakeFiles/swap_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable swap_2.exe"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\EIGEN-~3\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\swap_2.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/eigen-build/test/CMakeFiles/swap_2.dir/build: _deps/eigen-build/test/swap_2.exe
.PHONY : _deps/eigen-build/test/CMakeFiles/swap_2.dir/build

_deps/eigen-build/test/CMakeFiles/swap_2.dir/clean:
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\EIGEN-~3\test && $(CMAKE_COMMAND) -P CMakeFiles\swap_2.dir\cmake_clean.cmake
.PHONY : _deps/eigen-build/test/CMakeFiles/swap_2.dir/clean

_deps/eigen-build/test/CMakeFiles/swap_2.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading" "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\eigen-src\test" "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build" "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\eigen-build\test" "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\eigen-build\test\CMakeFiles\swap_2.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : _deps/eigen-build/test/CMakeFiles/swap_2.dir/depend

