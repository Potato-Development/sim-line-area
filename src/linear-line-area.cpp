//============================================================================
// Name        : linear-line-area.cpp
// Author      : Soichi Ueda
// Version     :
// Copyright   : 
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>

double area(double m, double c, double a, double b, int n) {
	double sum = 0;
	for (int i = 1; i <= n; ++i) {
		sum += (((a + (((b - a) / n) * i)) * m) + c) * ((b - a) / n);
	}

	return sum;
}



int main() {
	double m, c, a, b = 0.0;
	std::cout << "Enter m, c for function f(x) = mx + c." << std::endl;

	std::cout << "Enter m: ";
	std::cin >> m;

	std::cout << "Enter c: ";
	std::cin >> c;

	std::cout << "Enter a, b for area between f(a) and f(b)." << std::endl;

	std::cout << "Enter a: ";
	std::cin >> a;

	std::cout << "Enter b: ";
	std::cin >> b;

	std::cout << "Enter n for n slices. A higher n results in a closer output." << std::endl;

	std::cout << "Enter n: ";

	int n = 0;
	std::cin >> n;

	std::cout << "Area under f(x) = " << m << "x + " << c << " between f(" << a << ") and f(" << b << ") is: ";
	std::cout << area(m, c, a, b, n) << std::endl;
}







