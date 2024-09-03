; PS1 MIPS

.psx                              ; Target architechture
.create "fillmem.bin", 0x80010000

; Where to place the instructions in memory
.org 0x80010000

/// ; Constant
/// BASE_ADDR equ 0x0000
/// 
/// 
/// Main:
///     li $t0, 0xA000
///     li $t1, 0xA0FF
///     li $t2, 0x12345678
/// 
/// Loop:
///     ; sb    $t2, BASE_ADDR($t0)   ; Store 0x11 at adress BASE_ADDR+$t0
///     sw    $t2, BASE_ADDR($t0)   ; Store 0x11 at adress BASE_ADDR+$t0
///     addi  $t0, t0, 4            ; $t0 ++ (sizeof(WORD)== 4 == sizeof(int32_t))
///     ble   $t0, $t1, Loop        ; Branch if $t0 <= $t1
///     nop
/// 
/// End:
/// 
/// .close


// .psx
// .create "exercise-1.bin", 0x80010000
// .org 0x80010000

; Exerise1:
;     li $t0 0x0001 ; 1
;     li $t1 0x0100 ; 256
;     li $t2 0x0011 ; 17

Exercise2:
    li $t0, 0x0001
    li $t1, 0x0000
Loop:
    addi  $t0, $t0, 0x0001
    add   $t1, $t1, $t0
    ble   $t0, 0x000A, Loop
    nop

.close


