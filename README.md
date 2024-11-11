# linear-line-area
Converging area under a generic linear function between an upper and lower bound.

![image](https://github.com/user-attachments/assets/935c9a7b-50dc-4e34-804a-e97d987820fb)

## Introduction
The program finds the **_area_** under (or over) a generic function, $f(x)$ (which is linear for now, just to simplify things) and $a, b$ as the upper and lower bounds to find $S$. It does this by what I call "slicing" $b-a$ $n$ times. This leaves $n$ rectangles which **_overestimate_** $S$, each

$$f(a + \frac{b}{n} k)$$ 

high, and  

$$\frac{b-a}{n}$$

wide, where $k$ (1..=n) represents _which_ rectangle.

This leaves us with

$$
\sum_{k=1}^{n} f\left(a + \frac{b}{n} k\right) \cdot \frac{b}{n}
$$

to find the total area, which evaluates to

$$
\sum_{k=1}^{n} \left((a + \frac{b}{n} k)m + c\right)\cdot \frac{b}{n}
$$

for $y = mx + c$.

## Installation
Prebuilt binaries for `Linux amd64`, `Linux aarch64` and `Windows 64-bit` are provided in [releases](https://github.com/Potato-Development/linear-line-area/releases). If anyone can cross-compile for MacOS, that would be greatly appreciated; I build and compile on a Raspberry Pi.
If none of the binaries support your architecture, the binaries don't work, or you want to build from source, then clone the repo for the source code. The code is a single source file at:

```
/path/to/linear-line-area/src/main.cpp
```

It should compile with any toolchain without warnings. If you want to use my custom `Makefile`, you can find it in the project folder `/path/to/linear-line-area/Makefile`. Targets `all`, `clean`, and then individual targets for your architecture should be available.
