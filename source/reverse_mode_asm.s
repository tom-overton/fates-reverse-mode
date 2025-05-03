.text
.align 4

.set LAB_0036ebd4, 0x0036ebd4
.set Force__Get, 0x004f630c
.set Force__IsAllied, 0x0053c3e0

ReverseModeAsm:
    ldr        r0, [r4, #0x0]
    ldr        r0, [r0,#0xa4]
    ldrb       r0, [r0, #0x8]
    bl         Force__Get
    mov        r1, #0x0
    bl         Force__IsAllied
    cmp        r0, #0x0
    bne        LAB_0036ebd4
    ldrsh      r0, [r7, #0x58]
    add        r1, r4, #0x32
    and        r3, r0, #0x7
    ldrb       r2, [r1, r0, asr #0x3]
    orr        r2, r2, r9, lsl r3
    strb       r2, [r1, r0, asr #0x3]
    b          LAB_0036ebd4