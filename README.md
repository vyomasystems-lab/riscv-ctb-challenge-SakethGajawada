# riscv_ctb_challenges

## Challenge_level_1

### Challenge1_logical

#### Bug Explanation
The format of andi was wrong. Either an immediate value needs to be given or and should be given with a register.

![](https://github.com/vyomasystems-lab/riscv-ctb-challenge-SakethGajawada/blob/main/images/challenge1_logical.png)


### Challenge2_loop
#### Bug Explanation
The pass state was missing. Need to add a beq to terminate when the result is correct.  
#### Bug Location
![](https://github.com/vyomasystems-lab/riscv-ctb-challenge-SakethGajawada/blob/main/images/challenge1.png)
#### Proof of Debug
![](https://github.com/vyomasystems-lab/riscv-ctb-challenge-SakethGajawada/blob/main/images/challenge2_loop.png)

### Challenge3_illegal
Couldn't debug

## Challenge_level_2
### Challenge1_instructions
#### Bug Explanation
mulw, divw type of instructions were generated though rv32m was not included
### Bug Location
![](https://github.com/vyomasystems-lab/riscv-ctb-challenge-SakethGajawada/blob/main/images/image.png)

### Proof of Debug
![](https://github.com/vyomasystems-lab/riscv-ctb-challenge-SakethGajawada/blob/main/images/Pof_c2_1.png)

