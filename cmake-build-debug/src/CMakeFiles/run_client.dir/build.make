# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug"

# Include any dependencies generated for this target.
include src/CMakeFiles/run_client.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/run_client.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/run_client.dir/flags.make

src/CMakeFiles/run_client.dir/client_main.cpp.o: src/CMakeFiles/run_client.dir/flags.make
src/CMakeFiles/run_client.dir/client_main.cpp.o: ../src/client_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/run_client.dir/client_main.cpp.o"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/run_client.dir/client_main.cpp.o -c "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src/client_main.cpp"

src/CMakeFiles/run_client.dir/client_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/run_client.dir/client_main.cpp.i"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src/client_main.cpp" > CMakeFiles/run_client.dir/client_main.cpp.i

src/CMakeFiles/run_client.dir/client_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/run_client.dir/client_main.cpp.s"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src/client_main.cpp" -o CMakeFiles/run_client.dir/client_main.cpp.s

src/CMakeFiles/run_client.dir/client_main.cpp.o.requires:

.PHONY : src/CMakeFiles/run_client.dir/client_main.cpp.o.requires

src/CMakeFiles/run_client.dir/client_main.cpp.o.provides: src/CMakeFiles/run_client.dir/client_main.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/run_client.dir/build.make src/CMakeFiles/run_client.dir/client_main.cpp.o.provides.build
.PHONY : src/CMakeFiles/run_client.dir/client_main.cpp.o.provides

src/CMakeFiles/run_client.dir/client_main.cpp.o.provides.build: src/CMakeFiles/run_client.dir/client_main.cpp.o


src/CMakeFiles/run_client.dir/Client.cpp.o: src/CMakeFiles/run_client.dir/flags.make
src/CMakeFiles/run_client.dir/Client.cpp.o: ../src/Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/run_client.dir/Client.cpp.o"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/run_client.dir/Client.cpp.o -c "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src/Client.cpp"

src/CMakeFiles/run_client.dir/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/run_client.dir/Client.cpp.i"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src/Client.cpp" > CMakeFiles/run_client.dir/Client.cpp.i

src/CMakeFiles/run_client.dir/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/run_client.dir/Client.cpp.s"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src/Client.cpp" -o CMakeFiles/run_client.dir/Client.cpp.s

src/CMakeFiles/run_client.dir/Client.cpp.o.requires:

.PHONY : src/CMakeFiles/run_client.dir/Client.cpp.o.requires

src/CMakeFiles/run_client.dir/Client.cpp.o.provides: src/CMakeFiles/run_client.dir/Client.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/run_client.dir/build.make src/CMakeFiles/run_client.dir/Client.cpp.o.provides.build
.PHONY : src/CMakeFiles/run_client.dir/Client.cpp.o.provides

src/CMakeFiles/run_client.dir/Client.cpp.o.provides.build: src/CMakeFiles/run_client.dir/Client.cpp.o


src/CMakeFiles/run_client.dir/BitArray2D.cpp.o: src/CMakeFiles/run_client.dir/flags.make
src/CMakeFiles/run_client.dir/BitArray2D.cpp.o: ../src/BitArray2D.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/run_client.dir/BitArray2D.cpp.o"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/run_client.dir/BitArray2D.cpp.o -c "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src/BitArray2D.cpp"

src/CMakeFiles/run_client.dir/BitArray2D.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/run_client.dir/BitArray2D.cpp.i"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src/BitArray2D.cpp" > CMakeFiles/run_client.dir/BitArray2D.cpp.i

src/CMakeFiles/run_client.dir/BitArray2D.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/run_client.dir/BitArray2D.cpp.s"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src/BitArray2D.cpp" -o CMakeFiles/run_client.dir/BitArray2D.cpp.s

src/CMakeFiles/run_client.dir/BitArray2D.cpp.o.requires:

.PHONY : src/CMakeFiles/run_client.dir/BitArray2D.cpp.o.requires

src/CMakeFiles/run_client.dir/BitArray2D.cpp.o.provides: src/CMakeFiles/run_client.dir/BitArray2D.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/run_client.dir/build.make src/CMakeFiles/run_client.dir/BitArray2D.cpp.o.provides.build
.PHONY : src/CMakeFiles/run_client.dir/BitArray2D.cpp.o.provides

src/CMakeFiles/run_client.dir/BitArray2D.cpp.o.provides.build: src/CMakeFiles/run_client.dir/BitArray2D.cpp.o


src/CMakeFiles/run_client.dir/BitArray2D.asm.o: src/CMakeFiles/run_client.dir/flags.make
src/CMakeFiles/run_client.dir/BitArray2D.asm.o: ../src/BitArray2D.asm
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building ASM_NASM object src/CMakeFiles/run_client.dir/BitArray2D.asm.o"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && /usr/bin/nasm $(ASM_NASM_INCLUDES) $(ASM_NASM_FLAGS) -g -Fdwarf -f elf64 -o CMakeFiles/run_client.dir/BitArray2D.asm.o "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src/BitArray2D.asm"

src/CMakeFiles/run_client.dir/BitArray2D.asm.o.requires:

.PHONY : src/CMakeFiles/run_client.dir/BitArray2D.asm.o.requires

src/CMakeFiles/run_client.dir/BitArray2D.asm.o.provides: src/CMakeFiles/run_client.dir/BitArray2D.asm.o.requires
	$(MAKE) -f src/CMakeFiles/run_client.dir/build.make src/CMakeFiles/run_client.dir/BitArray2D.asm.o.provides.build
.PHONY : src/CMakeFiles/run_client.dir/BitArray2D.asm.o.provides

src/CMakeFiles/run_client.dir/BitArray2D.asm.o.provides.build: src/CMakeFiles/run_client.dir/BitArray2D.asm.o


# Object files for target run_client
run_client_OBJECTS = \
"CMakeFiles/run_client.dir/client_main.cpp.o" \
"CMakeFiles/run_client.dir/Client.cpp.o" \
"CMakeFiles/run_client.dir/BitArray2D.cpp.o" \
"CMakeFiles/run_client.dir/BitArray2D.asm.o"

# External object files for target run_client
run_client_EXTERNAL_OBJECTS =

src/run_client: src/CMakeFiles/run_client.dir/client_main.cpp.o
src/run_client: src/CMakeFiles/run_client.dir/Client.cpp.o
src/run_client: src/CMakeFiles/run_client.dir/BitArray2D.cpp.o
src/run_client: src/CMakeFiles/run_client.dir/BitArray2D.asm.o
src/run_client: src/CMakeFiles/run_client.dir/build.make
src/run_client: src/CMakeFiles/run_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable run_client"
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/run_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/run_client.dir/build: src/run_client

.PHONY : src/CMakeFiles/run_client.dir/build

src/CMakeFiles/run_client.dir/requires: src/CMakeFiles/run_client.dir/client_main.cpp.o.requires
src/CMakeFiles/run_client.dir/requires: src/CMakeFiles/run_client.dir/Client.cpp.o.requires
src/CMakeFiles/run_client.dir/requires: src/CMakeFiles/run_client.dir/BitArray2D.cpp.o.requires
src/CMakeFiles/run_client.dir/requires: src/CMakeFiles/run_client.dir/BitArray2D.asm.o.requires

.PHONY : src/CMakeFiles/run_client.dir/requires

src/CMakeFiles/run_client.dir/clean:
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" && $(CMAKE_COMMAND) -P CMakeFiles/run_client.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/run_client.dir/clean

src/CMakeFiles/run_client.dir/depend:
	cd "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments" "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/src" "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug" "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src" "/mnt/c/Users/Brady Cornett/CLionProjects/CSCI_366_Programming_Assignments/cmake-build-debug/src/CMakeFiles/run_client.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : src/CMakeFiles/run_client.dir/depend

