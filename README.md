# Hello Working with C in VSCode

Project for learning how to configure VSCode to work with C


## References 

- About VSCode & C/C++
    - https://code.visualstudio.com/docs/cpp/config-clang-mac
    - Visual Studio Code for C/C++ on Linux (2021) https://www.youtube.com/watch?v=9pjBseGfEPU
    - https://stackoverflow.com/questions/52770066/debugging-c-using-visual-studio-code-on-windows 
    - https://code.visualstudio.com/docs/editor/variables-reference
- About makefiles: 
    - https://bytes.usc.edu/cs104/wiki/makefile/ 
    - https://cs.colby.edu/maxwell/courses/tutorials/maketutor/



## Steps taken

1) (VSCode, XCode command line tools already installed.)
2) Installed Microsoft C/C++ extension 
3) made a folder, opened it
4) added a .gitignore
4) made hello_world.c
5) hit the debug button and select C tool (clang, e.g.)
    - look at `tasks.json` file created
6) Saw output in debug window! That was easy! Nice! 
7) try adding second_file.c and second_file.h
.... CLONK... 
```
Undefined symbols for architecture arm64:
  "_and_so_we_meet_again", referenced from:
      _main in hello_world-5211a2.o
ld: symbol(s) not found for architecture arm64
clang: error: linker command failed with exit code 1 (use -v to see invocation)
```
8) manual compile check
```
clang hello_world.c second_file.c
./a.out
```
... worked fine. Do I need to add a make file? 

9) Yes. I need to do one of two things
    A) in tasks.json change `"{$file}",` to `"hello_world.c", "second_file.c",` 
    B) OR add a make file. (later)

10) F5 to start the process of making a launch.json? Sure. See video.

11) make some small edits to launch.json, especially `"preLaunchTask": "C/C++: clang build active file"`

---

12) create a test makefile (see `makefile-test` rename as `makefile`), run `make` and `make clean` to confirm make is installed and working.

13) create simple makefile for 2 file project
