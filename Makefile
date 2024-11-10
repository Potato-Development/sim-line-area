all:
	g++ ./src/main.cpp -o ./target/linear-line-area-aarch64 -Wall --pedantic
	x86_64-linux-gnu-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic 
	x86_64-w64-mingw32-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic 

aarch64:
	g++ ./src/main.cpp -o ./target/linear-line-area-aarch64 -Wall --pedantic

amd64:
	x86_64-linux-gnu-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic 

amd64-windows:
	x86_64-w64-mingw32-g++ ./src/main.cpp -o ./target/linear-line-area-amd64 -Wall --pedantic 

clean:
	rm ./target/*
