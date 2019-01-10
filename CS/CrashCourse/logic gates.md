# Logic Gates



##### NOT GATES

```mermaid
graph LR
A(INPUT = 0 or 1)-->B{INPUT = 1?}
B--yes-->C(OUTPUT = 0)
B--no-->D(OUTPUT = 1)

```

| INPUT | OUTPUT |
| :---: | :----: |
|   0   |   1    |
|   1   |   0    |

```mermaid
graph LR

E(INPUT)-->F[NOT GATES]
F-->G(OUTPUT)
```

##### AND GATES

```mermaid
graph LR
A(INPUT 1)-->C{INPUT 1 = 1?}
B(INPUT 2)-->C
C--yes-->E{INPUT 2 = 1?}
E--yes-->F(OUTPUT = 1)
C--no-->D(OUTPUT = 0)
E--no-->D(OUTPUT = 0)
```

| INPUT 1 | INPUT 2 | OUTPUT |
| :-----: | :-----: | :----: |
|    1    |    1    |   1    |
|    1    |    0    |   0    |
|    0    |    1    |   0    |
|    0    |    0    |   0    |



```mermaid
graph LR
A1(INPUT 1)-->C1[AND GATES]
B1(INPUT 2)-->C1
C1-->D1(OUTPUT)
```

##### OR GATES

```mermaid
graph LR
A(INPUT 1)-->C1{INPUT 1 = 1?}
B(INPUT 2)-->C1
C1--yes-->E1(OUTPUT = 1)
C1--no-->C2{INPUT 2 = 1?}
C2--yes-->E1(OUTPUT = 1)
C2--no-->E2(OUTPUT = 0)

```

| INPUT 1 | INPUT 2 | OUTPUT |
| :-----: | :-----: | :----: |
|    1    |    1    |   1    |
|    1    |    0    |   1    |
|    0    |    1    |   1    |
|    0    |    0    |   0    |



```mermaid
graph LR
AA(INPUT 1)-->CA[AND GATES]
BA(INPUT 2)-->CA
CA-->DA(OUTPUT)
```

##### Exclusive OR GATES (XOR GATES)

```mermaid
graph LR
in1(INPUT 1)-->and[AND GATES]
in2(INPUT 2)-->and
in1(INPUT 1)-->or[OR GATES]
in2(INPUT 2)-->or
and-->not[NOT GATES]
not-->and2[AND GATES]
and2-->out[OUTPUT]
or-->and2
```

| INPUT 1 | INPUT 2 | OUTPUT |
| :-----: | :-----: | :----: |
|    1    |    1    |   0    |
|    1    |    0    |   1    |
|    0    |    1    |   1    |
|    0    |    0    |   0    |

```mermaid
graph LR

A1(INPUT 1)-->xor[XOR GATES]
A2(INPUT 2)-->xor[XOR GATES]
xor-->OUTPUT
```





