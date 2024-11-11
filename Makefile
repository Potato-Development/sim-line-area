all:
	mkdir ./target
	g++ ./src/main.cpp -o ./target/linear-line-area-aarch64 -Wall --pedantic -static
	x86_64-linux-gnu-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic -static
	x86_64-w64-mingw32-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic -static

aarch64:
	mkdir ./target
	g++ ./src/main.cpp -o ./target/linear-line-area-aarch64 -Wall --pedantic -static

amd64:
	mkdir ./target
	x86_64-linux-gnu-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic -static 

amd64-windows:
	mkdir ./target
	x86_64-w64-mingw32-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic -static

clean:
	rm -rf ./target
