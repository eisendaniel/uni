We use minimal unit tests as defined in `minunit.h` to conduct our tests.

The model solutions are provided by the files `base_editor.{c,h}`.
These are used by the unit tests to check the output of the student's code.
To test student code,
replace the `editor.{c,h}` with the student's files and compile the tests using the makefile.

To build the test suite, just run:

    make clean; make

This produces a binary called `a1test`, which includes all tests,
as well as individual task binaries `t4` to `t7`, which include only the tests for those tasks.

You can run a test of all tasks by calling the main binary:

    ./a1test

However, if the student's code doesn't implement one of the tasks at all,
the combined test suite will not compile as it expects every function to at least have a definition.
You can see which task is causing the issue by looking at the output of `make`.

To get around this, you can compile the test suites for individual tasks using e.g.:

    make clean; make t4

Or specify multiple tasks at once:

    make clean; make t5 t6

This will compile only the binaries for those tasks.
You can run them by calling e.g. `./t4`.
You can specify which tasks you want to compile in any order.

The makefile uses `clang` by default because it has stricter checking.
If you want to use GCC instead,
just change the `CC` variable in the makefile to `gcc`.

Note that we use the `-Wall` and `-pedantic-errors` options to catch as many potential issues as possible.
Depending on student code,
this may produce a large amount of output,
not all of which is necessarily _wrong_,
but it might be something worth remarking to the student.
