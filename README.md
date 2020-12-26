# wisp-bootstrap

A bootstrapped lisp compiler

## How it works

All I've done is package my Wisp interpreter, found [here](https://github.com/adam-mcdaniel/wisp), and incrementally add features until there's a fully featured "compiler".

_**This is not meant to be a good compiler! This is just a proof of concept! Use this at your own peril!**_

|File|Purpose|
|-|-|
|`1.lisp`|This file allows the user to input a wisp file through STDIN, and compile it into a packaged `.cpp` file.|
|`2.lisp`|This file allows the user to input a wisp file through command line arguments, and compile it into a packaged `.cpp` file.|
|`3.lisp`|This file does the same as `2.lisp`, except it adds the `os-cmd` function to the list of builtin functions.|
|`4.lisp`|This file takes a file from the command line arguments, compiles it to C++, and then compiles the result with `g++`.|

The final compiler is written to `wispc`.

## Usage

Just download the repository and run `make` in the directory!

```bash
$ git clone https://github.com/adam-mcdaniel/wisp-bootstrap
$ cd wisp-bootstrap
$ make
```

Then, compile away.

```bash
$ ./wispc hello_world.lisp
$ ./out
Hello world!
```