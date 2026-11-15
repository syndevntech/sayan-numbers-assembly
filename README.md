# Sayan Numbers — 8086 Assembly

An educational 8086 Assembly project that identifies **Sayan Numbers** within the range of 1 to 200 and calculates their sum.

The project demonstrates low-level programming techniques, integer arithmetic, conditional branching, and mathematical problem-solving using EMU8086.

## Mathematical Definition

A **Sayan Number** is a positive integer that satisfies the following condition:

**n = d(n) × s(n)**

Where:

- **n** — The positive integer being examined.
- **d(n)** — The number of positive divisors of n.
- **s(n)** — The sum of the decimal digits of n.

*Sayan Number is a custom mathematical definition introduced for this project.*

### Example: 80

The positive divisors of 80 are:

1, 2, 4, 5, 8, 10, 16, 20, 40, 80

Therefore:

- Number of divisors: 10
- Sum of digits: 8 + 0 = 8
- Product: 10 × 8 = 80

Since the product equals the original number, **80 is a Sayan Number**.

## Technologies

| Category | Technology |
|---|---|
| Programming language | 8086 Assembly |
| Processor architecture | Intel 8086 (16-bit) |
| Development environment | EMU8086 |
| Program format | DOS COM |
| Number representation | 16-bit unsigned integers |
| Programming concepts | Registers, loops, conditional jumps, division, multiplication |

## Algorithm

The program performs the following operations:

1. Initializes the counter at 200.
2. Counts the positive divisors of the current number.
3. Calculates the sum of its decimal digits.
4. Multiplies the divisor count by the digit sum.
5. Compares the result with the original number.
6. If the condition is satisfied, adds the number to the accumulated total.
7. Repeats until every integer from 200 down to 1 has been examined.

## Register Usage

| Register | Purpose |
|---|---|
| AX | Arithmetic operations and division results |
| BX | Divisor and multiplication/division operands |
| CX | Current number being examined |
| DX | Remainder and high-order multiplication result |
| SI | Number of positive divisors |
| DI | Candidate divisor counter |
| BP | Sum of decimal digits |

The accumulated result is stored in the 16-bit memory variable `TPLM`.

## Results

The Sayan Numbers in the interval [1, 200] are:

**1, 80, 108**

Their sum is:

**1 + 80 + 108 = 189**

The program stores the result in the `TPLM` variable.

- Decimal: 189
- Hexadecimal: 00BDh

**Note:** The program does not print its result to the console. The calculated value can be inspected in memory using the EMU8086 emulator/debugger.

## How to Run

1. Install and launch EMU8086.
2. Open `sayan_sayisi.asm`.
3. Compile and emulate the program.
4. Execute the instructions.
5. Inspect the `TPLM` variable to verify the final result.

## Project Structure

```text
sayan-numbers-assembly/
├── README.md
└── sayan_sayisi.asm
```

## Learning Objectives

This project explores:

- Mathematical algorithms in Assembly
- 16-bit register operations
- Integer division and remainder calculations
- Conditional branching and iteration
- Memory-based result storage
- Implementing mathematical definitions at a low level

## Author

**Mehmet Ali Sayan**

Mathematics & Computer Science  
Electrical & Electronics Engineering

Eskişehir Osmangazi University
