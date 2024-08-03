
# Project: ALU Design Using Behavioral and Structural Verilog

This project involves the design and implementation of an Arithmetic Logic Unit (ALU) using both behavioral and structural Verilog approaches. The project includes modules for the ALU, testbenches for verification, and synthesis-ready files for hardware implementation. It is designed to demonstrate the differences and applications of behavioral and structural design methodologies in digital logic design.

## Project Structure

- **Verilog Modules:**
  - `behavioral_ALU.v`: Implements the ALU using behavioral Verilog.
  - `behavioral_ALU_synth.v`: Synthesis-ready version of the behavioral ALU.
  - `structural_ALU.v`: Implements the ALU using structural Verilog.
  - `structural_ALU_synth.v`: Synthesis-ready version of the structural ALU.
  - `mycells.v`: Defines custom cell libraries or primitives.
  - `simple.v`: A simple module for testing or demonstration.
  - `synth.v`: Contains synthesis-related configurations.

- **Testbenches:**
  - `behavioral_ALU_tb.v`: Verifies the functionality of the behavioral ALU.
  - `structural_ALU_tb.v`: Verifies the functionality of the structural ALU.

- **Documentation:**
  - `NiloufarMortazavi220701096-CA03-ECE367.pdf`: A report detailing the design and implementation of the ALU.

## Installation

To use the modules and run the testbenches, you will need a Verilog simulator such as ModelSim. Follow these steps:

1. Clone the repository to your local machine:
   ```bash
   git clone <repository-url>
   ```

2. Navigate to the directory containing the Verilog files and testbenches.

3. Open your Verilog simulator and load the modules and their corresponding testbenches.

## Usage

Each ALU implementation can be tested using its associated testbench file. The testbenches are designed to verify the functionality of each ALU module. Simulate the testbenches using your Verilog simulator to check the outputs.

