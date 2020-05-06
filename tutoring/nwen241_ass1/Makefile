CC = clang

CFLAGS = -g -Wall -pedantic-errors

LFLAGS = -lrt -lm

CDEPS = base_editor.h editor.h minunit.h

all: a1test t4 t5 t6 t7

a1test: a1test.o editor.o base_editor.o
	$(CC) -o a1test a1test.o editor.o base_editor.o $(LFLAGS)

t4: a1test.t4o editor.o base_editor.o
	$(CC) -o t4 a1test.t4o editor.o base_editor.o $(LFLAGS)

t5: a1test.t5o editor.o base_editor.o
	$(CC) -o t5 a1test.t5o editor.o base_editor.o $(LFLAGS)

t6: a1test.t6o editor.o base_editor.o
	$(CC) -o t6 a1test.t6o editor.o base_editor.o $(LFLAGS)

t7: a1test.t7o editor.o base_editor.o
	$(CC) -o t7 a1test.t7o editor.o base_editor.o $(LFLAGS)

%.o: %.c $(CDEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

%.t4o: %.c $(CDEPS)
	$(CC) -c -o $@ $< $(CFLAGS) -DDISABLE_TASK5 -DDISABLE_TASK6 -DDISABLE_TASK7

%.t5o: %.c $(CDEPS)
	$(CC) -c -o $@ $< $(CFLAGS) -DDISABLE_TASK4 -DDISABLE_TASK6 -DDISABLE_TASK7

%.t6o: %.c $(CDEPS)
	$(CC) -c -o $@ $< $(CFLAGS) -DDISABLE_TASK4 -DDISABLE_TASK5 -DDISABLE_TASK7

%.t7o: %.c $(CDEPS)
	$(CC) -c -o $@ $< $(CFLAGS) -DDISABLE_TASK4 -DDISABLE_TASK5 -DDISABLE_TASK6

clean:
	rm -f a1test t4 t5 t6 t7 *.*o
