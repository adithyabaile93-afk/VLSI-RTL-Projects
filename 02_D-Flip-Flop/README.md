# D Flip-Flop – Verilog RTL Design

## Overview

This project implements a positive-edge triggered D Flip-Flop using Verilog HDL.

A D Flip-Flop is a sequential logic element that stores the value of the data input at the rising edge of the clock.

## Design

### Inputs
- `D` – Data input
- `CLK` – Clock input

### Output
- `Q` – Stored output

### Operation

At every rising edge of the clock:

```text
Q = D

The output changes only when the clock transitions from 0 to 1.

Implementation

The D Flip-Flop was implemented using synthesizable Verilog RTL.

always @(posedge CLK) begin
    Q <= D;
end

A non-blocking assignment (<=) is used for the sequential logic.

Verification

A Verilog testbench was developed to verify the functionality of the D Flip-Flop.
The testbench generates a periodic clock and applies different data values at different time intervals.
The design was simulated using Icarus Verilog and the signals were analyzed using EPWave.

Simulation

The simulation verifies that:
The output Q updates at the rising edge of CLK.
When D = 0 at a rising clock edge, Q becomes 0.
When D = 1 at a rising clock edge, Q becomes 1.
Changes in D between clock edges do not immediately affect Q.

Tools Used

Verilog HDL
EDA Playground
Icarus Verilog
EPWave

Project Structure

02_D-Flip-Flop/
├── dff.v
├── dff_tb.v
└── README.md

Learning Outcomes

Understanding sequential logic
Understanding positive-edge triggered flip-flops
Learning clock generation in Verilog
Using always @(posedge CLK) for sequential RTL
Understanding non-blocking assignments
Developing and verifying a Verilog testbench
Analyzing RTL simulation waveforms
