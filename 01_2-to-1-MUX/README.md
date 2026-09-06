# 2-to-1 Multiplexer – Verilog RTL Design

## Overview

This project implements a 2-to-1 Multiplexer (MUX) using Verilog HDL.

A 2-to-1 MUX selects one of two input signals based on a select signal.

## Design

### Inputs
- `A` – Input 0
- `B` – Input 1
- `S` – Select signal

### Output
- `Y` – Multiplexer output

### Logic

The output is defined as:

Y = S ? B : A

Therefore:

| Select (S) | Output (Y) |
|------------|------------|
| 0          | A          |
| 1          | B          |

## Implementation

The multiplexer was implemented using synthesizable Verilog RTL.

```verilog
assign Y = S ? B : A;

Verification

A Verilog testbench was developed to verify the functionality of the design.

The testbench checks different combinations of:

Input A
Input B
Select signal S

The design was simulated using Icarus Verilog and the output waveforms were verified using EPWave.

Simulation

The simulation confirms that:
When S = 0, output Y follows A.
When S = 1, output Y follows B.

Tools Used

Verilog HDL
EDA Playground
Icarus Verilog
EPWave

Project Structure

01_2-to-1-MUX/
├── mux2to1.v
├── mux2to1_tb.v
└── README.md

Learning Outcomes

Understanding basic RTL design
Writing synthesizable Verilog code
Developing a Verilog testbench
Running RTL simulations
Analyzing simulation waveforms
