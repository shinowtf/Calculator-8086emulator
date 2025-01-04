Title
Calculation of volume of cylinder and cuboid on the 8086 emulator

Introduction
2.1 The 8086 Microprocessor
In the late 1970s, Intel created the 8086 microprocessor. It is the first member of the x86 microprocessor family, which comprises several popular CPUs found in personal computers. The 8086 microprocessor's architecture is based on a complex instruction set computer (CISC) architecture, which means it supports a diverse collection of instructions, many of which may execute several actions in a single instruction. The 8086 microprocessor features a 20-bit address bus that can address up to 1 MB of memory, as well as a 16-bit data bus for transferring data between the CPU and memory or I/O devices.
The 8086 microprocessor consists of two major execution units: the execution unit (EU) and the bus interface unit (BIU). The BIU fetches and decodes instructions from memory, while the EU executes them. The BIU also handles data transport from the CPU to memory or I/O devices. The 8086 microprocessor includes the general-purpose registers, segment registers, and special registers. The general-purpose registers can be used to store data and perform arithmetic and logical operations, while the segment registers are used to address memory segments. The special registers include the flags register, which stores status information about the result of the previous operation, and the instruction pointer (IP), which points to the next
![image](https://github.com/user-attachments/assets/52653ee3-8913-4c01-a5d8-e3f3db80857c)
Block Diagram of a 8086 Microprocessor

Assembly language is a low-level programming language that is intended to communicate directly with a computer's hardware. Unlike machine language, which consists of binary and hexadecimal characters, assembly languages are designed to be readable by humans. The Control Processing Unit can only detect strings of 0 and 1 language. Thus, the low-level assembly language was devised to ease
human beings to understand various instructions in assembly language. Assemblers are programs that can translate assembly language code to specific machine language code.
![image](https://github.com/user-attachments/assets/b3f658a7-dd73-41c1-9b13-82e89ac4801b)
System Bus connection among the RAM, CPU and Devices

From the above figure (Figure 2), the system bus (shown in yellow) connects the various components of a computer. The CPU is the heart of the computer, most of computations occur inside the CPU. RAM is a place to where the programs are loaded in order to be executed.
In this experiment, the flag is used. The flag is an example of a register, a memory that is directly connected to the CPU. Registers are 16-bit registers with 9 bits used to indicate the current state of the processor. There are two groups of flags, status flags and control flags. This includes carry flag, parity flag, auxiliary flag, zero flag, sign flag, and overflow flag. The control flags are used to control the operations in emu8086 like the interrupt flag, direction flag and trap flag.
An emulator is a software tool that connects two computer systems enabling it to behave as one. In computer programming, Emulator often relates to the concept of the host system and guest system where the host gives input for the guest to run it.



Problem Statement
This project covers the theory of calculating the volume of cylinder and cuboid using the software emu8086. Student are required to use the application and use the theory learned based on researches on the software. With the usage of flags and memory as well as the matric number of the group members (input) to calculate the volume of a cuboid and a cylinder.The matric number of each member act as the length, width, height and radius of the cuboid and cylinder.

Objectives
1.To understand the operation of emu8086.
2.To construct an assembly language program using software emu8086 to calculate the volume of cuboid and cylinder.

𝑉𝑜𝑙𝑢𝑚𝑒 𝑜𝑓 𝑐𝑦𝑙𝑖𝑛𝑑𝑒𝑟=𝜋𝑟2ℎ
𝑉𝑜𝑙𝑢𝑚𝑒 𝑜𝑓 𝑐𝑢𝑏𝑜𝑖𝑑= ℎ𝑒𝑖𝑔ℎ𝑡×𝑙𝑒𝑛𝑔𝑡ℎ×𝑤𝑖𝑑𝑡ℎ

![image](https://github.com/user-attachments/assets/f9637611-f487-4140-a6b7-9c49dc936a02)

Result
![image](https://github.com/user-attachments/assets/302d7e0a-159d-4704-8df4-19ba8d6afdeb)
Calculation of volume of cylinder

![image](https://github.com/user-attachments/assets/55b2a5cb-f516-4f91-9bbe-c406db6d2d35)
Calculation of the volume of Cuboid

![image](https://github.com/user-attachments/assets/e2996238-12f8-40ae-83ff-fea5765c2347)
Volume of Cylinder

![image](https://github.com/user-attachments/assets/29f5ef94-bee1-44b5-bdf2-6a0b7b570298)
Volume of Cuboid
