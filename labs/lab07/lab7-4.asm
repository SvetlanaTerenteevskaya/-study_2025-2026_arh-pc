%include 'in_out.asm'
SECTION .data
msg_x: DB 'Введите x: ',0
msg_a: DB 'Введите a: ',0
msg_res: DB 'Результат: ',0
SECTION .bss
x: RESB 10
a: RESB 10
SECTION .text
GLOBAL _start
_start:
mov eax, msg_x
call sprint
mov ecx, x
mov edx, 10
call sread
mov eax, x
call atoi
mov [x], eax
mov eax, msg_a
call sprint
mov ecx, a
mov edx, 10
call sread
mov eax, a
call atoi
mov [a], eax
mov ebx, [a]    
mov ecx, [x]    
cmp ecx, ebx    
jg case1        
jmp case2       
case1:          
mov eax, ebx    
add eax, ecx   
jmp result
case2:            
mov eax, ecx   
result:
mov ebx, eax    
mov eax, msg_res
call sprint    
mov eax, ebx   
call iprintLF  
call quit
