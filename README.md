# SynthoSphere_Pradhyumna
I have created this repo for a hackathon project called SynthoSphere.

# 32-bit RISC-V processor 
A 32-bit RISC-V processor is a modern open-source CPU design adhering to the RISC-V ISA. It emphasizes simplicity, performance, and customization.
With a streamlined instruction set and multiple privilege levels, it suits various applications from embedded systems to high-performance computing.

![Processor](https://github.com/PradhyumnaVA/SynthoSphere_Pradhyumna/assets/137704414/dcc5ef7f-33b6-440e-a59f-aba015e16b2a)

# RTL Design:
1. [PROCESSOR.v](https://github.com/PradhyumnaVA/SynthoSphere_Pradhyumna/blob/61b441b95a73d3ea6c70b50f48c145e0dbc437c1/PROCESSOR.v)
2. [DATAPATH.v](https://github.com/PradhyumnaVA/SynthoSphere_Pradhyumna/blob/2e4918735cd26404a398d84173a5b8c89b7cca3c/DATAPATH.v)
3. [REG_FILE.v](https://github.com/PradhyumnaVA/SynthoSphere_Pradhyumna/blob/2e4918735cd26404a398d84173a5b8c89b7cca3c/REG_FILE.v)
4. [ALU.v](https://github.com/PradhyumnaVA/SynthoSphere_Pradhyumna/blob/2e4918735cd26404a398d84173a5b8c89b7cca3c/ALU.v)
5. [INST_MEM.v](https://github.com/PradhyumnaVA/SynthoSphere_Pradhyumna/blob/2e4918735cd26404a398d84173a5b8c89b7cca3c/INST_MEM.v)
6. [IFU.v](https://github.com/PradhyumnaVA/SynthoSphere_Pradhyumna/blob/2e4918735cd26404a398d84173a5b8c89b7cca3c/IFU.v)

# Testbech
[Processor_tb.v](https://github.com/PradhyumnaVA/SynthoSphere_Pradhyumna/blob/2e4918735cd26404a398d84173a5b8c89b7cca3c/Processor_tb.v)

# Synthesis
# Commands for synthesis
    yosys
    read_liberty -lib <relative or abs path>/ lib file 
    read_verilog <top.v> 
    synth -top <topmodule of top.v> -flatten
    dfflibmap -liberty <relative or abs path>/ lib file  
    abc -liberty <relative or abs path>/ lib file ( generates results on ur design → netlist verify them before continuing)
    show <topmodule of top.v>
    write_verilog <netlist_file_name>.v  OR    write_verilog -noattr  <netlist_file_name>.v

# Printing statistics
I have used the "flatten" command along with synthesis command thus hierarchy isn't shown.
The "flatten" command in digital design refers to a process where the hierarchical structure of a design is removed, and all modules and instances are brought to the top level. This results in a single flat design without any hierarchy.

![Screenshot from 2023-08-26 06-08-14](https://github.com/PradhyumnaVA/SynthoSphere_Pradhyumna/assets/137704414/0a9995b6-d813-4c7b-b846-f21ff5d132c7)

My RTL design is very bulky, so design time would have been very high if i would have synthesised it normally. Thus to decrease the synthesis time i gave "flatten" command. 
One more advantage is number of wires used has decreased drastically, thus synthesised design will look a bit simpler.







