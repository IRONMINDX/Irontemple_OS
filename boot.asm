org 0x7C00

mov ah, 0x0E
mov si, msg

.loop:
    lodsb
    cmp al, 0
    je .done
    int 0x10
    jmp .loop

.done:
    jmp $

msg db 'Hello World',0

times 510-($-$$) db 0
dw 0xAA55
