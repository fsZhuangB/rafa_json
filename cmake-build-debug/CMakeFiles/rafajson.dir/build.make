# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/fszhuangb/Documents/rafa_json

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/fszhuangb/Documents/rafa_json/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/rafajson.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rafajson.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rafajson.dir/flags.make

CMakeFiles/rafajson.dir/src/json.cpp.o: CMakeFiles/rafajson.dir/flags.make
CMakeFiles/rafajson.dir/src/json.cpp.o: ../src/json.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fszhuangb/Documents/rafa_json/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rafajson.dir/src/json.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rafajson.dir/src/json.cpp.o -c /Users/fszhuangb/Documents/rafa_json/src/json.cpp

CMakeFiles/rafajson.dir/src/json.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rafajson.dir/src/json.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fszhuangb/Documents/rafa_json/src/json.cpp > CMakeFiles/rafajson.dir/src/json.cpp.i

CMakeFiles/rafajson.dir/src/json.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rafajson.dir/src/json.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fszhuangb/Documents/rafa_json/src/json.cpp -o CMakeFiles/rafajson.dir/src/json.cpp.s

CMakeFiles/rafajson.dir/src/jsonValue.cpp.o: CMakeFiles/rafajson.dir/flags.make
CMakeFiles/rafajson.dir/src/jsonValue.cpp.o: ../src/jsonValue.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fszhuangb/Documents/rafa_json/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/rafajson.dir/src/jsonValue.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rafajson.dir/src/jsonValue.cpp.o -c /Users/fszhuangb/Documents/rafa_json/src/jsonValue.cpp

CMakeFiles/rafajson.dir/src/jsonValue.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rafajson.dir/src/jsonValue.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fszhuangb/Documents/rafa_json/src/jsonValue.cpp > CMakeFiles/rafajson.dir/src/jsonValue.cpp.i

CMakeFiles/rafajson.dir/src/jsonValue.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rafajson.dir/src/jsonValue.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fszhuangb/Documents/rafa_json/src/jsonValue.cpp -o CMakeFiles/rafajson.dir/src/jsonValue.cpp.s

CMakeFiles/rafajson.dir/src/parse.cpp.o: CMakeFiles/rafajson.dir/flags.make
CMakeFiles/rafajson.dir/src/parse.cpp.o: ../src/parse.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/fszhuangb/Documents/rafa_json/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/rafajson.dir/src/parse.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rafajson.dir/src/parse.cpp.o -c /Users/fszhuangb/Documents/rafa_json/src/parse.cpp

CMakeFiles/rafajson.dir/src/parse.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rafajson.dir/src/parse.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/fszhuangb/Documents/rafa_json/src/parse.cpp > CMakeFiles/rafajson.dir/src/parse.cpp.i

CMakeFiles/rafajson.dir/src/parse.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rafajson.dir/src/parse.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/fszhuangb/Documents/rafa_json/src/parse.cpp -o CMakeFiles/rafajson.dir/src/parse.cpp.s

# Object files for target rafajson
rafajson_OBJECTS = \
"CMakeFiles/rafajson.dir/src/json.cpp.o" \
"CMakeFiles/rafajson.dir/src/jsonValue.cpp.o" \
"CMakeFiles/rafajson.dir/src/parse.cpp.o"

# External object files for target rafajson
rafajson_EXTERNAL_OBJECTS =

librafajson.a: CMakeFiles/rafajson.dir/src/json.cpp.o
librafajson.a: CMakeFiles/rafajson.dir/src/jsonValue.cpp.o
librafajson.a: CMakeFiles/rafajson.dir/src/parse.cpp.o
librafajson.a: CMakeFiles/rafajson.dir/build.make
librafajson.a: CMakeFiles/rafajson.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/fszhuangb/Documents/rafa_json/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library librafajson.a"
	$(CMAKE_COMMAND) -P CMakeFiles/rafajson.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rafajson.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rafajson.dir/build: librafajson.a

.PHONY : CMakeFiles/rafajson.dir/build

CMakeFiles/rafajson.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rafajson.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rafajson.dir/clean

CMakeFiles/rafajson.dir/depend:
	cd /Users/fszhuangb/Documents/rafa_json/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/fszhuangb/Documents/rafa_json /Users/fszhuangb/Documents/rafa_json /Users/fszhuangb/Documents/rafa_json/cmake-build-debug /Users/fszhuangb/Documents/rafa_json/cmake-build-debug /Users/fszhuangb/Documents/rafa_json/cmake-build-debug/CMakeFiles/rafajson.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rafajson.dir/depend

