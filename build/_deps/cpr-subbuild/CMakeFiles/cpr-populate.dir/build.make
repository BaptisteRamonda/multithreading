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
CMAKE_SOURCE_DIR = "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild"

# Utility rule file for cpr-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/cpr-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cpr-populate.dir/progress.make

CMakeFiles/cpr-populate: CMakeFiles/cpr-populate-complete

CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-mkdir
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-build
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install
CMakeFiles/cpr-populate-complete: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Completed 'cpr-populate'"
	"C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E make_directory "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/CMakeFiles"
	"C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E touch "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/CMakeFiles/cpr-populate-complete"
	"C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E touch "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-done"

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-build: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'cpr-populate'"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\CPR-BU~1 && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E echo_append
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\CPR-BU~1 && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E touch "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-build"

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure: cpr-populate-prefix/tmp/cpr-populate-cfgcmd.txt
cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'cpr-populate'"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\CPR-BU~1 && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E echo_append
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\CPR-BU~1 && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E touch "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure"

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download: cpr-populate-prefix/src/cpr-populate-stamp/download-cpr-populate.cmake
cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-urlinfo.txt
cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'cpr-populate'"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -P "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/download-cpr-populate.cmake"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -P "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/verify-cpr-populate.cmake"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -P "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/extract-cpr-populate.cmake"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E touch "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download"

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'cpr-populate'"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\CPR-BU~1 && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E echo_append
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\CPR-BU~1 && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E touch "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install"

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'cpr-populate'"
	"C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -Dcfgdir= -P "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/tmp/cpr-populate-mkdirs.cmake"
	"C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E touch "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-mkdir"

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch-info.txt
cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'cpr-populate'"
	"C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E echo_append
	"C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E touch "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch"

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-test: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'cpr-populate'"
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\CPR-BU~1 && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E echo_append
	cd /d C:\Users\BAPTIS~1\DOCUME~1\GitHub\MULTIT~1\build\_deps\CPR-BU~1 && "C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E touch "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-test"

cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update-info.txt
cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir="C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "No update step for 'cpr-populate'"
	"C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E echo_append
	"C:\Users\Baptiste Ramonda\anaconda3\Lib\site-packages\cmake\data\bin\cmake.exe" -E touch "C:/Users/Baptiste Ramonda/Documents/GitHub/multithreading/build/_deps/cpr-subbuild/cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update"

cpr-populate: CMakeFiles/cpr-populate
cpr-populate: CMakeFiles/cpr-populate-complete
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-build
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-configure
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-download
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-install
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-mkdir
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-patch
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-test
cpr-populate: cpr-populate-prefix/src/cpr-populate-stamp/cpr-populate-update
cpr-populate: CMakeFiles/cpr-populate.dir/build.make
.PHONY : cpr-populate

# Rule to build all files generated by this target.
CMakeFiles/cpr-populate.dir/build: cpr-populate
.PHONY : CMakeFiles/cpr-populate.dir/build

CMakeFiles/cpr-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cpr-populate.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cpr-populate.dir/clean

CMakeFiles/cpr-populate.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild" "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild" "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild" "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild" "C:\Users\Baptiste Ramonda\Documents\GitHub\multithreading\build\_deps\cpr-subbuild\CMakeFiles\cpr-populate.dir\DependInfo.cmake" "--color=$(COLOR)"
.PHONY : CMakeFiles/cpr-populate.dir/depend
