# 🏛️ NTI Training Program Repository

Welcome to my repository for the **National Telecommunication Institute (NTI)** Digital Design and RTL Verification training track. This repository contains all practical lab tasks, behavioral module implementations, integrated systems, and verification testbenches written in **Verilog HDL**.

---

## 📑 Table of Contents
* [Repository Structure](#-repository-structure)
* [Sessions & Labs Tasks](#-sessions--labs-tasks)
* [Project 1: Gray Code to 7-Segment System](#-project-1-gray-code-to-7-segment-system)
* [Project 2: Clock-Divided Integrated Systems](#-project-2-clock-divided-integrated-systems)
* [Tools & Simulation Guide](#-tools--simulation-guide)

---

## 📂 Repository Structure

### 1️⃣ Sessions & Labs Tasks (`01_Sessions_Tasks`)
Basic sequential and clock-divider logic implemented during live training sessions:
* **Clock Divider (`division_4.v`)**: Parameterized frequency divider using logarithmic counter logic triggered on negative edge.
* **Shift Register (`shift_register.v`)**: 4-bit Circular Right-Shift Register featuring active-low reset and hold control.
* **Up/Down Counter (`up_down_counter.v`)**: Parameterized synchronous counter supporting directional counting (`up`/`down`) and gating (`enb`).

---

### 2️⃣ Project 1: Gray Code to 7-Segment System (`02_Project_1_Gray_to_7Segment`)
A multi-stage design converting input Gray code to standard Binary representation, then decoding it to control a 7-segment display.

* **`gray_conv.v`**: Bitwise XOR reduction Gray-to-Binary converter.
* **`hex_7_segement.v`**: Parameterized Binary-to-7-Segment display decoder.
* **`top_module_1.v`**: Standard top-level module connecting the converter to the display.
* **`top_module_2.v`**: Inverted-logic variant (Active-Low Gray inputs and 7-Segment signals).
* **Testbenches**: Automated testbenches (`top_module_1_tb.v`) verifying all input combinations.

---

### 3️⃣ Project 2: Clock-Divided Integrated Systems (`03_Project_2_Integrated_Systems`)
Advanced top-level integration combining custom clock frequency division with sequential logic components.

#### 🔹 Task 1: Clock-Divided Up/Down Counter Display
Integrates a $50\text{ MHz} \rightarrow 4\text{ Hz}$ clock divider, a synchronous up/down counter, and a 7-segment decoder into a single module (`top_module_1.v`) to visualize live incrementing/decrementing sequence on hardware.

#### 🔹 Task 2: Clock-Divided Shift Register
Connects the custom $50\text{ MHz} \rightarrow 4\text{ Hz}$ clock divider module to a 4-bit circular shift register (`top_module_2.v`) to perform synchronized right-shifting under hold-state control.

---

## 🛠️ Tools & Simulation Guide

* **Hardware Description Language:** Verilog HDL
* **Simulation & Synthesis:** ModelSim / QuestaSim / EDA Playground / Xilinx Vivado

### How to Run Simulation

1. **Clone the Repository:**
   ```bash
   git clone [https://github.com/YOUR_USERNAME/NTI-Verilog-Digital-Design.git](https://github.com/YOUR_USERNAME/NTI-Verilog-Digital-Design.git)
