%include 'in_out.asm'
section .data
msg1 db 'Наименьшее число: ',0h
A db '46',0   
B db '32',0
C db '74',0
section .bss
min resb 10
section .text
global _start
_start:
mov eax,A
call atoi
mov [min],eax 
mov eax,B
call atoi
mov ebx,eax
mov eax,[min]
cmp eax,ebx
jl check_C
mov [min],ebx   
check_C:
mov eax,C
call atoi
mov ebx,eax
mov eax,[min]
cmp eax,ebx
jl fin
mov [min],ebx   
fin:
mov eax, msg1
call sprint 
mov eax,[min]
call iprintLF
call quit
