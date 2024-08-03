
# Project: Implementation of a Hash Generation System

This project involves the implementation of a hash generation system using SystemVerilog and C++. It includes modules for arithmetic operations, control units, memory, and other components, along with C++ source files for supporting functionalities such as the MD5 hashing algorithm. The project is designed to demonstrate the integration of hardware description languages and software components, with simulation support in ModelSim and synthesis in Quartus.

## Project Structure

- **SystemVerilog Modules:**
  - `Adder.sv`: Implements an adder.
  - `CU.sv`: Implements a control unit.
  - `DP.sv`: Implements a data path.
  - `F_Gen.sv`: Implements function generation.
  - `Hash_Gen.sv`: Implements hash generation.
  - `LUT.sv`, `LUT2.sv`: Implements lookup tables.
  - `Memory.sv`: Implements a memory unit.
  - `MUX.sv`: Implements a multiplexer.
  - `Register.sv`: Implements a register.
  - `Shifter.sv`: Implements a shifter.
  - `TB.sv`: Testbench for verifying the modules.

- **C++ Source Files:**
  - `src/MD5.cpp`: MD5 hashing algorithm implementation.
  - `src/messagePreprocess/messagePreprocess.cpp`: Message preprocessing code.
  - `src/uint4/uint4.cpp`: 4-bit unsigned integer implementation.

- **Quartus Project Files:**
  - Project and synthesis files for Quartus, including simulation configurations.

- **Documentation:**
  - `DLD-CA#06-REPORT.docx.pdf`: A report detailing the design and implementation of the system.

## Installation

To use the modules and run the testbenches, you will need a Verilog simulator such as ModelSim and a synthesis tool like Quartus. Follow these steps:

1. Clone the repository to your local machine:
   ```bash
   git clone <repository-url>
   ```

2. Navigate to the directory containing the SystemVerilog files and C++ source files.

3. Open your Verilog simulator and load the modules and their corresponding testbenches.

4. Use Quartus for synthesizing the design files.

## Usage

- **SystemVerilog Modules:** Simulate the testbenches using ModelSim to verify the functionality of each module.
- **C++ Source Files:** Compile and run the C++ files using a C++ compiler to test software components.
- **Quartus Project:** Open the Quartus project files for synthesis and implementation on FPGA.

