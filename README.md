# Universal Counter ASIC Design (RTL to GDSII)

## Overview

This project demonstrates the complete RTL-to-GDSII implementation of a parameterized Universal Counter using the OpenLane ASIC flow and the SKY130 open-source Process Design Kit (PDK). The design was developed in Verilog, functionally verified through simulation, synthesized into standard cells, and implemented through floorplanning, placement, clock tree preparation, routing, and final GDSII generation.

This project was created to gain practical experience with the complete digital ASIC implementation flow.

---

## Features

- Parameterized counter width
- Synchronous reset
- Up/Down counting
- Enable control
- Parallel load functionality
- Terminal count detection
- Overflow detection
- Underflow detection
- RTL simulation using Icarus Verilog
- Waveform verification using GTKWave
- RTL-to-GDSII implementation using OpenLane
- Physical layout visualization using OpenROAD and KLayout

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- OpenLane
- OpenROAD
- KLayout
- SKY130 PDK
- Ubuntu (WSL)

---

## ASIC Design Flow

```
Specification
      ↓
RTL Design (Verilog)
      ↓
Testbench Development
      ↓
Simulation
      ↓
Waveform Verification
      ↓
Logic Synthesis
      ↓
Static Timing Analysis
      ↓
Floorplanning
      ↓
Power Distribution Network
      ↓
Placement
      ↓
Routing
      ↓
Layout Verification
      ↓
Final GDSII Generation
```

---

## Project Structure

```
Universal-Counter-ASIC
│
├── RTL
│   ├── counter.v
│   └── counter_tb.v
│
├── Simulation
│   └── counter.vcd
│
├── OpenLane
│   ├── universal_counter.def
│   ├── universal_counter.gds
│   ├── universal_counter.lef
│   └── universal_counter.v
│
├── Images
│
├── Reports
│
└── README.md
```

---

## RTL Simulation

The design was verified using a comprehensive Verilog testbench. Functional verification includes:

- Reset operation
- Up counting
- Down counting
- Enable functionality
- Parallel loading
- Terminal count detection
- Overflow condition
- Underflow condition

Waveforms were verified using GTKWave.

---

## Synthesis Results

- Technology: SKY130
- Standard Cell Library: sky130_fd_sc_hd
- Number of Cells: 37
- Chip Area: 394.128 µm²

---

## Physical Design

The complete ASIC implementation was performed using OpenLane.

The following implementation stages were completed successfully:

- Synthesis
- Floorplanning
- Power Planning
- Placement
- Routing
- DEF Generation
- LEF Generation
- GDSII Generation

The generated layout was inspected using:

- OpenROAD
- KLayout

---

## Repository Contents

- RTL source code
- Testbench
- Simulation waveform
- OpenLane implementation files
- Final GDSII layout
- Physical design reports
- Layout screenshots

---

## Learning Outcomes

Through this project I gained practical experience in:

- Digital RTL Design
- Functional Verification
- Standard Cell Synthesis
- Static Timing Analysis
- Floorplanning
- Power Planning
- Cell Placement
- Signal Routing
- Physical Layout Analysis
- ASIC Design Flow
- OpenLane Tool Flow
- SKY130 PDK

---

## Future Improvements

- Clock gating implementation
- Scan chain insertion
- Formal verification
- DFT integration
- Timing optimization
- Power optimization
- Multi-clock support

---

## Author

**Dhruv Patel**

Electronics and Communication Engineering

Aspiring ASIC / Physical Design Engineer
