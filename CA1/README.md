
# Project: Digital Logic Design Components

This project contains several digital logic design components implemented in Verilog, along with associated testbenches. The project demonstrates various techniques and modules commonly used in digital systems design.

## Project Structure

- **Q1: Fibonacci Sequence Generator**
  - `module_fibonacci.v`: A Verilog module implementing a Fibonacci sequence generator.
  - `fibonacciTB.v`: Testbench for the Fibonacci module.

- **Q2: Behavioral Module**
  - `module_behavioral.v`: A Verilog module demonstrating behavioral modeling.
  - `TB2.v`: Testbench for the behavioral module.

- **Q3: Custom Logic Module**
  - `Q3.v`: A Verilog module implementing custom logic.
  - `Q3TB.v`: Testbench for the custom logic module.

- **Q4: Majority Detector**
  - `majority_detector.v`: A Verilog module implementing a majority detection algorithm.
  - `majorityTB.v`: Testbench for the majority detector module.

- **Documentation**
  - `DLD-CA#01-REPORT.pdf`: A comprehensive report documenting the design and implementation of the modules.

## Installation

To use the modules and run the testbenches, you will need a Verilog simulator such as ModelSim or Xilinx Vivado. Follow these steps:

1. Clone the repository to your local machine:
   ```bash
   git clone <repository-url>
   ```

2. Navigate to the directory of the module you wish to test.

3. Open your Verilog simulator and load the module and its corresponding testbench.

## Usage

Each module can be tested using its associated testbench file. The testbenches are designed to verify the functionality of each module:

- **Fibonacci Module**: Simulate `fibonacciTB.v` to verify the Fibonacci sequence generation.
- **Behavioral Module**: Simulate `TB2.v` to verify the behavioral model.
- **Custom Logic Module**: Simulate `Q3TB.v` to check the custom logic.
- **Majority Detector**: Simulate `majorityTB.v` to verify the majority detection logic.

## Contributing

Contributions are welcome! If you have suggestions for improvements or additional features, please fork the repository and submit a pull request.
