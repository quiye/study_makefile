CFLAG=-std=gnu++1y

#main: main.cpp fact.cpp
all: main.cpp fact.s
	g++ $(CFLAG) main.cpp fact.s
fact.s: fact.cpp
	g++ $(CFLAG) -S fact.cpp

clean:
	rm -rf *.out *.s
