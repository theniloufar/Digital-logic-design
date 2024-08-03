
# Project: Design of Arithmetic Circuits

This project focuses on the design and implementation of various arithmetic circuits using Verilog. It includes modules for basic arithmetic operations and statistical calculations, along with testbenches to validate their functionalities. The project demonstrates the use of SystemVerilog for hardware description and is intended for simulation with the ModelSim software.

## Project Structure

- **Verilog Modules:**
  - `1bit_comparator.v`: Implements a 1-bit comparator.
  - `4bit_comparator.v`: Implements a 4-bit comparator.
  - `max_block.v`: Calculates the maximum value among inputs.
  - `mean_block.v`: Computes the mean of the input values.
  - `min_block.v`: Determines the minimum value from inputs.
  - `stat_calculator.v`: A comprehensive module for statistical calculations.
  - `var_block.v`: Calculates the variance of input values.

- **Testbenches:**
  - `maxTB.v`: Verifies the functionality of the `max_block` module.
  - `meanTB.v`: Tests the `mean_block` module.
  - `minTB.v.bak`: Backup testbench for the `min_block` module.
  - `statTB.v`: Verifies the `stat_calculator` module.
  - `varTB.v`: Tests the `var_block` module.

- **Documentation:**
  - `DLD-CA#03-REPORT.pdf`: A report detailing the design and implementation of the modules.

## Installation

To use the modules and run the testbenches, you will need a Verilog simulator such as ModelSim. Follow these steps:

1. Clone the repository to your local machine:
   ```bash
   git clone <repository-url>
   ```

2. Navigate to the directory containing the Verilog files and testbenches.

3. Open your Verilog simulator and load the modules and their corresponding testbenches.

## Usage

Each module can be tested using its associated testbench file. The testbenches are designed to verify the functionality of each module. Simulate the testbenches using your Verilog simulator to check the outputs.

