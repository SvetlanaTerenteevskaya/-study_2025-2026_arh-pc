%include 'in_out.asm'
SECTION .data	
msg:   DB 'Введите x: ', 0
rem: DB 'Формула: y = (1/3 * x + 5) * 7', 0
result  DB 'Результат y: ', 0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
mov eax, rem
call sprintLF
mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax, x
call atoi  
mov ebx, 3
xor edx, edx
div ebx         
add eax, 5      
mov ebx, 7
mul ebx         
mov edi, eax    
mov eax, result
call sprint
mov eax, edi
call iprintLF
call quit
