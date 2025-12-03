# 🧮 3x3 Matrix Multiplication in Verilog HDL

A compact and efficient Verilog project implementing **3x3 matrix multiplication**. This design takes two 3x3 matrices (with 8-bit unsigned entries) and computes their product, outputting a new 3x3 matrix with 19-bit entries to never overflow for any multiplication of two 8-bit numbers.

---

## Table of Contents

- [About](#about)
- [Features](#features)
- [Architecture](#architecture)
- [Testbench & Example Usage](#testbench--example-usage)
- [File Structure](#file-structure)
- [How to Run](#how-to-run)
- [License](#license)
- [Contact](#contact)

---

## About

This project demonstrates **matrix multiplication using Verilog HDL**, employing pure combinational logic. The modules are suitable for digital design demonstration, algorithm realization, education, or preliminary acceleration of signal/image processing tasks on hardware.

- **Inputs:**  
  - Matrix A: 3×3, each element 8 bits  
  - Matrix B: 3×3, each element 8 bits
- **Output:**  
  - Matrix C = A × B: 3×3, each element 19 bits

Calculation follows the standard row-column product rule for matrices.

---

## Features

- **Direct Combinational Logic:** Output reflects inputs instantly, ideal for fast hardware operations or as a sub-block in pipelined designs.
- **Handles Full 8-Bit Range:** Internal width ensures correctness for all possible products and sums.
- **Easy Integration:** Just instantiate with two sets of 9 eight-bit values!
- **Comprehensive Testbench:** Helps verify correctness and view input/output matrices in simulation.

---

## Architecture

**Module: `matrix1`**

- Inputs:
  - `a1 .. a9`: Elements of matrix A (row-major order)
  - `b1 .. b9`: Elements of matrix B (row-major order)
- Outputs:
  - `c1 .. c9`: Elements of output matrix (also row-major)

**Matrix Multiplication Rule:**  
Each output element is computed as:

```
c(i,j) = a(row i, col 1) * b(1, col j) +
         a(row i, col 2) * b(2, col j) +
         a(row i, col 3) * b(3, col j)
```

**Example for c1:**
```
c1 = (a1 * b1) + (a4 * b2) + (a7 * b3)
```
And so on for the other elements.

---

## Testbench & Example Usage

**Testbench:**  
- Initializes matrices A and B with hexadecimal values
- Prints each input matrix for easy verification
- Prints computed output matrix C

**Example Output:**
```
Matrix A:
FF	10	B5
A1	A1	11
0C	00	12

Matrix B:
11	1D	D1
FF	EE	61
21	18	13

Final Matrix C (A*B):
00000553	00000f9b	0000c7b1
00000847	00000e89	0000b247
0000014c	0000024a	00000a92
```
(Values will vary based on test input!)

---

## File Structure

```
.
├── matrix.v   // Matrix multiplication implementation (module `matrix1`)
├── tbb.v      // Testbench (applies values, prints matrices)
├── README.md  // Project documentation
```

---

## How to Run

1. **Simulation**

   Use Icarus Verilog or any standard simulator:

   ```sh
   iverilog -o tbb tbb.v matrix.v
   vvp tbb
   ```

   Output will be displayed directly in your terminal.

2. **(Optional) View Waveforms**

   Add or modify dumping statements if you wish to use GTKWave:

   ```sh
   gtkwave matrix.vcd
   ```

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Contact

- **LinkedIn:** [Tejas R Mallah](https://www.linkedin.com/posts/tejas-r-mallah-28052b283_verilog-fpga-digitaldesign-activity-7364343834392113152-s981?utm_source=share&utm_medium=member_desktop&rcm=ACoAAET0mcABoSmVvowkUz7qcSZkG2bhRVZnDQ4)
- **Email:** tejasmallah@gmail.com

---

_Always open to feedback, collaboration, and hardware design opportunities!_

```
#Verilog #DigitalDesign #MatrixMultiplication #FPGA #RTL #HardwareDesign #Testbench #EDA #SignalProcessing
```
