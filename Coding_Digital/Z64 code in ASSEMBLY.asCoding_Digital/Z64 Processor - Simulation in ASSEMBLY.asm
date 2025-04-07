        .text
        .globl sum_n

# Calcola la somma dei primi n numeri interi (da 1 a n)
# Input:  $a0 = n
# Output: $v0 = somma

sum_n:
        li      $t0, 0          # somma = 0
        li      $t1, 1          # contatore = 1

loop:
        bgt     $t1, $a0, end   # se contatore > n, salta a end
        daddu   $t0, $t0, $t1   # somma += contatore
        daddiu  $t1, $t1, 1     # contatore++
        j       loop
        nop                     # delay slot

end:
        move    $v0, $t0        # risultato -> $v0
        jr      $ra             # return
        nop
