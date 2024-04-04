; N boot sector
[org 0x7c00]

  mov [BOOT_DRV], dl

  mov bp, 0x8000
  mov sp, bp

  mov bx, 0x9000
  mov dh, 5
  mov dl, [BOOT_DRV]
  call disk_load

  mov dx, [0x9000]
  call print_hex

  mov dx, [0x9000 + 512]
  call print_hex

  jmp $


; Included libraries
%include "./print_string.asm"
%include "./print_hex.asm"
%include "./disk_load.asm"

; Global variables
BOOT_DRV: db 0


; Bootsector padding
times 510-($-$$) db 0
dw 0xaa55


; Random data from drive
times 256 dw 0xdada
times 256 dw 0xface
