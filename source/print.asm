; IN (si) OUT ()
print:
    pusha
    mov  bx, 0007h   ; BH is DisplayPage, BL is GraphicsColor
  start:
    mov  al, [si]    ; <<<<<<<<<
    cmp  al, 0 
    je   done
    mov  ah, 0x0E    ; BIOS.Teletype
    int  0x10
    inc  si          ; <<<<<<<<<
    jmp  start
  done:
    popa
    ret

; IN () OUT ()
print_nl:
    pusha
    mov  bh, 0       ; BH is DisplayPage (No need for GraphicsColor in BL)
    mov  ax, 0x0E0D  ; BIOS.Teletype CR
    int  0x10
    mov  ax, 0x0E0A  ; BIOS.Teletype LF
    int  0x10
    popa
    ret


