# 🧮 3x3 Matrix Multiplication in Verilog HDL

A compact and efficient Verilog project implementing **3x3 matrix multiplication**. This design takes two 3x3 matrices (with 8-bit unsigned entries) and computes their product, outputting a new 3x3 matrix with 19-bit entries to prevent overflow. Designed for demonstration, education, and as a reusable hardware block.

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

This project demonstrates **matrix multiplication using Verilog HDL**, employing pure combinational logic. It’s suitable for digital/FPGA design, hardware acceleration, or education in digital signal and image processing.

- **Inputs**:  
  - Matrix A: 3×3, each element 8 bits  
  - Matrix B: 3×3, each element 8 bits
- **Output**:  
  - Matrix C = A × B: 3×3, each element 19 bits (prevents overflow in all input cases)

Calculation follows the standard row-column product logic for matrices.

---

## Features

- **Pure Combinational Logic**: Output updates instantly based on inputs—ideal for high-speed hardware or as an accelerator sub-block.
- **Handles All 8-Bit Ranges**: No overflow due to widened output bitwidth.
- **Easy Instantiation**: Just wire up two sets of 9 input elements!
- **Comprehensive Testbench**: Prints matrices before and after multiplication for easy verification and simulation.

---

## Architecture

### Module: `matrix1`

- **Inputs**:
  - `a1 .. a9`: Elements of matrix A (row-major order)
  - `b1 .. b9`: Elements of matrix B (row-major order)
- **Outputs**:
  - `c1 .. c9`: Elements of output matrix C (row-major order)

**Matrix Multiplication Rule**  
Each output is computed as:  
```
c(i,j) = a(i,1)*b(1,j) + a(i,2)*b(2,j) + a(i,3)*b(3,j)
```
**Example:**  
`c1 = (a1 * b1) + (a4 * b2) + (a7 * b3)`

---

## Testbench & Example Usage

- The testbench (`tbb.v`) initializes matrices A and B with sample hexadecimal values, prints their contents, and then prints the resulting matrix C.
- Output example (will depend on the initialized values):

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

*(Matrix values are shown as hexadecimal and may differ depending on your testbench values.)*

---

## File Structure

```
.
├── matrix.v      // Matrix multiplier module (matrix1)
├── tbb.v         // Testbench (applies values, prints matrices)
├── README.md     // Project documentation
```

---

## How to Run

> **Requirements:** [Icarus Verilog](https://iverilog.fandom.com/wiki/Installation_Guide) (`iverilog`), and optionally GTKWave for waveform viewing.

1. **Simulate**

   ```sh
   iverilog -o tbb tbb.v matrix.v
   vvp tbb
   ```
   Output will appear in your terminal.

2. **(Optional) Waveform View**

   Add VCD dump statements to your testbench (if not present), then:
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
