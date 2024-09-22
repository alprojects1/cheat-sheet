## **GCC Cheat-Sheet**


### **Linking Options**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc <source_file>.c -L<directory> -l<library>`| Link with a specific library located in a directory        |
| `gcc <source_file>.c -lm`                      | Link with the math library (`libm`)                        |
| `gcc <source_file>.c -static`                  | Create a statically linked executable                      |
| `gcc <source_file>.c -shared`                  | Create a shared library (dynamic library, `.so` file)      |
| `gcc -o <output_file> <source_files> -l<library>` | Link with a specified library while generating an output executable|


### **Error Handling**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc -fsyntax-only <source_file>.c`            | Check the code for syntax errors without generating an object or binary file |
| `gcc -Wall <source_file>.c`                    | Enable all common warnings                                 |
| `gcc -Werror <source_file>.c`                  | Treat warnings as errors (stop compilation)                |

### **Cross-Compiling**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc -target=<target_arch> <source_file>.c`    | Cross-compile for a specific target architecture (e.g., ARM, x86_64) |
| `gcc --sysroot=<path>`                         | Specify the system root when cross-compiling                |



### **Miscellaneous**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc -v`                                       | Show detailed version and compilation steps                |
| `gcc --help`                                   | Show help for GCC commands                                 |
| `gcc -o <output_file> <source_file>.c -pipe`   | Use pipes rather than temporary files for intermediate steps|
| `gcc -x <language> <source_file>`              | Treat input file as the specified language (e.g., `c`, `c++`)|




### **Basic GCC Commands**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc <source_file>.c`                          | Compile a C source file into an executable (default `a.out`)|
| `gcc -o <output_file> <source_file>.c`         | Compile and specify the output file name                   |
| `gcc -c <source_file>.c`                       | Compile the source code to an object file (no linking)     |
| `gcc <source_file1>.c <source_file2>.c`        | Compile multiple C files and link them together            |
| `gcc <source_file>.c -o <output_file>`         | Compile and specify output executable                      |
| `g++ <source_file>.cpp`                        | Compile a C++ source file                                  |
| `g++ -o <output_file> <source_file>.cpp`       | Compile C++ and specify the output executable              |


### **Debugging Options**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc -g <source_file>.c`                       | Compile with debugging information (for use with GDB)      |
| `gcc -ggdb <source_file>.c`                    | Include additional debug information for GDB               |
| `gcc -Wall <source_file>.c`                    | Enable most common warnings                                |
| `gcc -Werror <source_file>.c`                  | Treat warnings as errors (stop compilation if warnings are present) |
| `gcc -pedantic <source_file>.c`                | Issue all warnings required by strict ISO C/C++ standard   |



### **Compiling and Linking Separately**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc -c <file1>.c -o <file1>.o`                | Compile source code into object file without linking       |
| `gcc -c <file2>.c -o <file2>.o`                | Compile another source file                                |
| `gcc <file1>.o <file2>.o -o <output_file>`     | Link object files to create an executable                  |



### **Optimization Options**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc -O0 <source_file>.c`                      | No optimization (default)                                  |
| `gcc -O1 <source_file>.c`                      | Optimize for performance without increasing compilation time |
| `gcc -O2 <source_file>.c`                      | Optimize more, including costly optimizations              |
| `gcc -O3 <source_file>.c`                      | Maximum optimization, including aggressive performance tuning |
| `gcc -Os <source_file>.c`                      | Optimize for size (minimize code size)                     |




### **Preprocessing Options**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc -E <source_file>.c`                       | Run the preprocessor only, without compiling                |
| `gcc -I <directory>`                           | Add a directory to the list of paths to search for header files |
| `gcc -D<macro>`                                | Define a macro in the code being compiled                   |
| `gcc -U<macro>`                                | Undefine a macro                                            |
| `gcc -include <header_file>`                   | Include a header file before all others                     |



### **C++ Specific Options (g++)**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `g++ -std=c++11 <source_file>.cpp`             | Compile C++ code with C++11 standard support               |
| `g++ -std=c++17 <source_file>.cpp`             | Compile C++ code with C++17 standard support               |
| `g++ -fno-exceptions <source_file>.cpp`        | Disable exception handling                                 |
| `g++ -fno-rtti <source_file>.cpp`              | Disable runtime type identification                        |


### **Multithreading Options**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc -pthread <source_file>.c`                 | Compile with POSIX threads support (for multithreading)    |
| `gcc -fopenmp <source_file>.c`                 | Compile with OpenMP support for parallel processing        |




### **Compiling Large Projects**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc @options_file`                            | Read additional command-line options from a file           |
| `gcc -M <source_file>.c`                       | Output a makefile-style dependency list                    |


### **Profiling and Performance Analysis**
| Command                                        | Description                                                |
|------------------------------------------------|------------------------------------------------------------|
| `gcc -pg <source_file>.c`                      | Enable profiling with `gprof`                              |
| `gprof <executable_file> gmon.out`             | Generate profiling report using `gprof`                    |






### **Common File Extensions**
- **`.c`**: C source file
- **`.cpp`**: C++ source file
- **`.h`**: C/C++ header file
- **`.o`**: Object file (output of compilation but not yet linked)
- **`.a`**: Static library
- **`.so`**: Shared library (for dynamic linking)


### **Makefile Integration**

- GCC is often used in conjunction with **Makefiles** to automate the compilation process, especially for larger projects. Makefiles allow you to specify dependencies, compilation flags, and multiple steps to manage complex projects.

A simple **Makefile** example:
```makefile
CC=gcc
CFLAGS=-Wall -g

all: myprogram

myprogram: main.o lib.o
	$(CC) -o myprogram main.o lib.o

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

lib.o: lib.c
	$(CC) $(CFLAGS) -c lib.c

clean:
	rm -f *.o myprogram
