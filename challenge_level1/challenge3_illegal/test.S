# See https://gitlab.com/vyoma_systems/common/-/blob/main/LICENSE.vyoma for more details
 
#include "riscv_test.h"
#include "test_macros.h"

RVTEST_RV32M
RVTEST_CODE_BEGIN

  .align 2
  .option norvc

  li TESTNUM, 2
illegal_instruction:
  lui t0, 0x12345               
  j fail
  TEST_PASSFAIL

  .align 8
  .global mtvec_handler
mtvec_handler:
  li t1, CAUSE_ILLEGAL_INSTRUCTION
  csrr t0, mcause
  bne t0, t1, fail
  csrr t0, mepc

  mret

RVTEST_CODE_END

  .data
RVTEST_DATA_BEGIN

  TEST_DATA

RVTEST_DATA_END