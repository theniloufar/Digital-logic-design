
# Project: Implementation of a Statistical Calculator

This project involves the implementation of various components that can be used in a statistical calculator using Verilog. It includes modules for counters, multiplexers, shift registers, and a serial data receiver, along with testbenches to validate their functionalities. The project is designed to demonstrate the use of SystemVerilog for hardware description and is intended for simulation with the ModelSim software.

## Project Structure

- **Verilog Modules:**
  - `counter3.v`: Implements a 3-bit counter.
  - `counter4_0.v`: Implements a 4-bit counter (version 0).
  - `counter4_1.v`: Implements a 4-bit counter (version 1).
  - `MUX.v`: Implements a multiplexer.
  - `MUX2.v`: Implements a 2-way multiplexer.
  - `serial_receiver.v`: Implements a serial data receiver.
  - `shiftreg_l.v`: Implements a left shift register.
  - `shiftreg_r.v`: Implements a right shift register.

- **Testbenches:**
  - `TB.v`: Verifies the functionality of the modules.
  - `TB2.v`: Additional testbench for further testing.

- **Documentation:**
  - `DLD-CA#04-REPORT.pdf`: A report detailing the design and implementation of the modules.

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

## Contributing

Contributions are welcome! If you have suggestions for improvements or additional features, please fork the repository and submit a pull request.
