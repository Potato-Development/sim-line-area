all:
	g++ ./src/main.cpp -o ./target/linear-line-area-aarch64 -Wall --pedantic -static
	x86_64-linux-gnu-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic -static
	x86_64-w64-mingw32-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic -static

aarch64:
	g++ ./src/main.cpp -o ./target/linear-line-area-aarch64 -Wall --pedantic -static

amd64:
	x86_64-linux-gnu-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic -static 

amd64-windows:
	x86_64-w64-mingw32-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic -static

clean:
	rm ./target/*
