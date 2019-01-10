#ALU (Arithmetic Logic Unit)
Intel 74181 (the first 4-bit ALU in history)
### ALU's arithmetic unit (no Multiplication and division)

|         unit         |
| :------------------: |
|         add          |
|    add with carry    |
|       subtract       |
| subtract with borrow |
|        negate        |
|      increment       |
|      decrement       |
|     pass through     |

##### Example: 1-bit HALF ADDER ( compute the sum of  two 1-bit input)

| INPUT 1 | INPUT 2 | CARRY | SUM  |
| :-----: | :-----: | :---: | :--: |
|    0    |    0    |   0   |  0   |
|    1    |    0    |   0   |  1   |
|    0    |    1    |   0   |  1   |
|    1    |    1    |   1   |  0   |

```mermaid
graph LR
in1(INPUT 1)-->XOR
in2(INPUT 2)-->XOR
XOR-->SUM
in1-->AND
in2-->AND
AND-->CARRY
```


```mermaid
graph LR
in1(INPUT 1)--1-->ha[HALF ADDER]
in2(INPUT 2)--2-->ha
ha--S-->SUM
ha--C-->CARRY
```

 #####Example: 1-bit FULL ADDER (compute the sum of three 1-bit input)

| INPUT 1 | INPUT 2 | INPUT 3 | CARRY | SUM  |
| :-----: | :-----: | :-----: | :---: | :--: |
|    0    |    0    |    0    |   0   |  0   |
|    1    |    0    |    0    |   0   |  1   |
|    0    |    1    |    0    |   0   |  1   |
|    0    |    0    |    1    |   0   |  1   |
|    1    |    1    |    0    |   1   |  0   |
|    0    |    1    |    1    |   1   |  0   |
|    1    |    0    |    1    |   1   |  0   |
|    1    |    1    |    1    |   1   |  1   |

```mermaid
graph LR
in1(INPUT 1)--1-->ha[HALF ADDER]
in2(INPUT 2)--2-->ha
in3(INPUT 3)--2-->ha2
ha--C-->or[OR GATES]
ha--S1-->ha2[HALF ADDER]
ha2--C-->or
ha2--S-->SUM
or-->CARRY

```



```mermaid
graph LR
in1(INPUT 1)--1-->fa[FULL ADDER]
in2(INPUT 2)--2-->fa
in3(INPUT 3)--3-->fa
fa--S-->SUM
fa--C-->CARRY
```

#####Example: 8-BIT RIPPLE CARRY ADDER (compute the sum of two 8-bit input)

Assume two 8-bit input A=A7 A6 A5 A4 A3 A2 A1A0 and B=B7 B6 B5 B4 B3 B2 B1B0, then this ADDER output SUM=sum7 sum6 sum5 sum4 sum3 sum2 sum1 sum0. Notice the last FULL ADDER has a CARRY output. If this output is not 0, this means the sum of A and B is too large. This is called a overflow. In general, and overflow occurs when the result of an addition is too large to be represented by the number of bits you are using. this can usually cause errors and unexpected behavior.
Modern computer dosen't use this adder anymore.
CARRY-LOOK-AHEAD ADDER (modern adding circuit)

```mermaid
graph TB

A0(A0)--1-->ha0[HALF ADDER]
B0(B0)--2-->ha0
ha0--S-->sum0

ha0--C1-->fa1[FULL ADDER]
A1(A1)--2-->fa1
B1(B1)--3-->fa1
fa1--S-->sum1

fa1--C1-->fa2[FULL ADDER]

A2(A2)--2-->fa2
B2(B2)--3-->fa2
fa2--S-->sum2
fa2--C1-->fa3[FULL ADDER]

A3(A3)--2-->fa3
B3(B3)--3-->fa3
fa3--S-->sum3
fa3--C1-->fa4[FULL ADDER]

A4(A2)--2-->fa4
B4(B2)--3-->fa4
fa4--S-->sum4
fa4--C1-->fa5[FULL ADDER]

A5(A2)--2-->fa5
B5(B2)--3-->fa5
fa5--S-->sum5
fa5--C1-->fa6[FULL ADDER]

A6(A2)--2-->fa6
B6(B2)--3-->fa6
fa6--S-->sum6
fa6--C1-->fa7[FULL ADDER]

A7(A2)--2-->fa7
B7(B2)--3-->fa7
fa7--S-->sum7
fa7--C1-->CARRY
```






### ALU's logic unit

##### Example:  tests if a 8-bit input is zero

```mermaid
graph LR
A0(A0)-->or[OR GATES]
A1(A1)-->or
A2(A2)-->or1[OR GATES]
A3(A3)-->or1
A4(A4)-->or2[OR GATES]
A5(A5)-->or2
A6(A6)-->or3[OR GATES]
A7(A7)-->or3
or-->or4[OR GATES]
or1-->or4
or2-->or5[OR GATES]
or3-->or5
or4-->or6[OR GATES]
or5-->or6
or6-->not[NOT GATES]
not-->x(OUTPUT)
```

### An 8-bit ALU

A and B are 8-bit inputs.

Operation code is a 4-bit input to tell ALU to do what such as add (1000) or subtract (1100).

Flags represents particular states and statuses such as overflow, zero, negative.

Output is the result of compute.

```mermaid
graph LR
A(INPUT A)-->v[ALU]
B(INPUT B)-->v
opt(OPERATION CODE)-->v
v-->flg(FLAGS)
v-->out(OUTPUT)
```

