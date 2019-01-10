#Central Processing Unit (CPU)

First single-chip CPU was the 4-bit CPU Intel 4004 (1971).

![intel](/image/intel4004.png)

### Example: a simple CPU (add and store)

This simple CPU contains 4 components and connects to the RAM to read data.

|   Components   |                                          |
| :------------: | :--------------------------------------: |
|  4 Registers   |          temporarily store data          |
| A control unit |   Control ALU, other registers and RAM   |
|      ALU       |                 compute                  |
|     Clock      | a signal that synchronize everything in control unit |

And this CPU have four function coded by 4-bit operation code

| Instruction |               Description                | operation code |        Address of Registers         |
| :---------: | :--------------------------------------: | :------------: | :---------------------------------: |
|   Load_A    |    Read RAM location into register A     |      0010      |          4-bit RAM address          |
|   Load_B    |    Read RAM location into register B     |      0001      |          4-bit RAM address          |
|   Store_A   | Write from register A into RAM location  |      0100      |          4-bit RAM address          |
|     ADD     | ADD two registers, store result into second register |      1000      | 2-bit register ID,2-bit register ID |

![cpu](/image/cpu.png)

##### Fetch phase

Control unit fetch the operation code according to the instruction address from RAM and store it in the instruction register.

##### Decode phase 

Control unit decode the operation code

##### Execute phase

Control unite is responsible for selecting the right register to pass in as inputs, and configuring the ALU to perform the right operation. 



The number that CPU can complete a fetch-decode-execute phase in one second is called clock speed (HZ).