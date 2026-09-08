4-bit Synchronous Up Counter – Verilog RTL Design

Overview

This project implements a 4-bit synchronous up counter with synchronous reset using Verilog HDL.
The counter increments its value by one at every rising edge of the clock and counts from 0 to 15.

Design

Inputs
- `CLK` – Clock input
- `RESET` – Synchronous reset input

Output
- `Q[3:0]` – 4-bit counter output

Operation

When `RESET = 1`, the counter is reset to:

```text
0000

When RESET = 0, the counter increments by one at every rising edge of CLK.

0000 → 0001 → 0010 → 0011 → ... → 1111 → 0000

Since the counter is 4-bit, it has 16 possible states ranging from 0 to 15.

Implementation

The counter was implemented using synthesizable Verilog RTL.

always @(posedge CLK) begin
    if (RESET)
        Q <= 4'b0000;
    else
        Q <= Q + 1'b1;
end

The design uses a positive-edge triggered clock and a synchronous reset.

Verification

A Verilog testbench was developed to verify the counter functionality.

The testbench:
Generates a periodic clock.
Applies the reset signal.
Verifies the counting sequence.
Applies reset again during operation.
Verifies that the counter returns to zero at the next rising clock edge.

The design was simulated using Icarus Verilog and the output waveforms were analyzed using EPWave.

Simulation

The simulation verifies that:
The counter increments at every rising edge of CLK.
The counter follows the sequence from 0 to 15.
After 15, the counter rolls over to 0.
When RESET = 1, the counter becomes 0 at the next rising clock edge.
The reset is synchronous because the output does not change immediately when RESET changes.

Tools Used

Verilog HDL
EDA Playground
Icarus Verilog
EPWave

Project Structure

03_4-bit-Counter/
├── counter.v
├── counter_tb.v
└── README.md

Learning Outcomes

Understanding sequential digital logic
Understanding synchronous counters
Understanding synchronous reset
Working with multi-bit registers
Implementing binary counting in Verilog
Generating and controlling a clock in a testbench
Developing and verifying sequential RTL
Analyzing simulation waveforms using EPWave
