
# Project: Complex Digital Design with Verilog and Quartus

This project involves the design and implementation of complex digital logic circuits using Verilog, Quartus for FPGA design, and ModelSim for simulation. The project includes synthesis reports, simulation files, and configuration data, demonstrating the full design flow from coding to implementation.

## Project Structure

- **Quartus Project Files:**
  - Project configuration and settings files (`.qpf`, `.qsf`) for managing the Quartus project.
  - Block diagram files (`.bdf`) for visual circuit representation in Quartus.
  - Output files (`.sof`, `.pof`, `.rpt`) for FPGA programming and synthesis reports.

- **Verilog Modules:**
  - Verilog files implementing various logic and control functions.

- **ModelSim Simulation Files:**
  - Simulation outputs and timing files (`.sdo`, `.vo`, `.xrf`) for ModelSim analysis.

- **Database and Output Files:**
  - Intermediate files for synthesis and simulation data storage.

## Installation

To work with this project, you will need:
- **Quartus Prime:** For FPGA design and synthesis.
- **ModelSim:** For simulation and verification of the design.

### Steps to Setup:
1. **Clone the Repository:**
   ```bash
   git clone <repository-url>
   ```

2. **Quartus Setup:**
   - Open Quartus and load the provided project files (`.qpf`, `.qsf`).
   - Compile the design to generate the FPGA programming file (`.sof`, `.pof`).

3. **ModelSim Simulation:**
   - Use ModelSim to simulate the Verilog files and verify functionality with the `.sdo` and `.vo` files for timing.

## Usage

- **Simulation:** Run testbenches in ModelSim to verify each module.
- **Synthesis and Implementation:** Use Quartus to synthesize the design, analyze timing reports, and program the FPGA.

