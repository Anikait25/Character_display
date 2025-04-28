# Character Display on 7-Segment using Verilog

This project demonstrates how to display specific characters on a 7-segment display using Verilog HDL.  
It includes two modules:

- `character_disp.v`: Character-to-7-segment decoder.
- `character_display.v`: Top-level module connecting inputs and outputs.

## Project Structure

| File | Description |
| --- | --- |
| `character_disp.v` | Module that maps 8-bit input data (`char_data`) to 7-segment display output (`seg_data`) encoding. |
| `character_display.v` | Top-level module that connects input signals and invokes `character_disp` to drive the 7-segment display. |

## How It Works

- **Input (`char_data`)**:  
  An 8-bit input that represents an ASCII-like code for a character.
  

## Simulation

To simulate the design:

1. Use any Verilog simulator (such as ModelSim, Vivado, or online tools like EDAPlayground).
2. Provide different values of `char_data` and observe the 7-segment encoded output `seg_data`.
3. You can extend the character set by adding more cases in the `character_disp.v` file.

## Example Mapping

| Input Character | `char_data` | Display |
| :--- | :---: | :---: |
| A | 8'h41 | Shows 'A' |
| b | 8'h62 | Shows 'b' |
| C | 8'h43 | Shows 'C' |
| ... | ... | ... |

*(More mappings can be customized inside the Verilog code.)*

## Requirements

- Basic knowledge of Verilog HDL
- Verilog simulator (ModelSim, Vivado, Quartus Prime, etc.)
- FPGA board (optional, if you want to test on real hardware)

- **Output (`seg_data`)**:  
  A 7-bit output that drives a 7-segment display to show the corresponding character. (Note:- This program is written so that it shows the characters "RSA" (R and A are same)).

- Based on the input, predefined patterns are sent to the 7-segment display to show custom characters like 'A', 'b', 'C', 'd', etc.

- The mapping logic is implemented using combinational `case` statements.
