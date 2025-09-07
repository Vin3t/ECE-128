# ECE-128-Lab_1

Project description:
The purpose of lab 1 is to create a 8:1 multiplexer in Vivado using verilog as the language.  To achieve this goal, three modeling methods will be used: structural, behavioral, and Dataflow. In structural modeling, the designer needs to understand the digital circuit structure and use verilog’s primitive gates to build the circuit. For behavioral modeling, the designer needs to understand the digital logic behind the circuit and develop the corresponding code via initial and always statements. And with dataflow modeling, the designer will implement the logic through the use of the boolean expressions. 

Instruction for simulation and FPGA implementation:
For the simulation, the I[2] output it shows low since selector 1 is active. For I[2] to be active it needs to have selector 2 and 3 high. In the implementation sw 0 to sw 7 are the 8 inputs for the mux and sw 8 - sw 10 are the selectors of the mux. Given the truthtable of an 8:1 mux when certain selectors are high and the input is high an led will turn on to signify a correct combination 
