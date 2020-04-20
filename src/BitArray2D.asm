
        global  set_bit_elem
        global  get_bit_elem
        section .text

set_bit_elem:
        push rbp            ; save the base pointer on the stack (at rsp+8)
        mov rbp, rsp        ; set up the rbp for the bottom of this frame

        ; rdi contains array pointer
        ; rsi contains row width
        ; rdx contains row
        ; rcx contains col

        ; Followed instructions on D2L for this portion

        mov rax, rdx    ; move row into rax (the return value)
        imul rax, rsi   ; multiply row by row width to get beginning of index
        add rax, rcx    ; these last three commands give me the final index
        mov rbx, rax    ; moving the index into a new register, this is because we need index later but need offset
        sar rbx, 3      ; shifting the bytes by 3 is the same as dividing by 8, this is byte offset
        sal rbx, 3      ; shifting left by 3 multiplies by 8 to start getting bit offset
        sub rax, rbx    ; final bit offset calculated
        mov rbx, 8      ; move 8 (size of character) into rbx
        sub rbx, rax    ; subtract rax (bit offset) from character size
        sub rbx, 1      ; subtract a 1
        mov rsi, 0
        mov rax, 1
        compare_last_shift:
            cmp rbx, rsi
            jne shift
            jmp fin
        shift:
            sal rax, 1
            add rsi, 1
            jmp compare_last_shift
        fin:
            sal rdx, 5
            add rdx, rcx
            sar rdx, 3
            mov rbx, [rdi+rdx]
            or  rbx, rax
            mov [rdi+rdx], rbx ; move mask into memory location

            mov rsp, rbp        ; restore stack pointer to before we pushed parameters onto the stack
            pop rbp             ; remove rbp from the stack to restore rsp to initial value
            ret                 ; return value in rax






get_bit_elem:
        push rbp            ; save the base pointer on the stack (at rsp+8)
        mov rbp, rsp        ; set up the rbp for the bottom of this frame

        ; rdi contains array pointer
        ; rsi contains row width
        ; rdx contains row
        ; rcx contains col

        ; Followed instructions on D2L for this portion

        mov rax, rdx    ; move row into rax (the return value)
        imul rax, rsi   ; multiply row by row width to get beginning of index
        add rax, rcx    ; these last three commands give me the final index
        mov rbx, rax    ; moving the index into a new register, this is because we need index later but need offset
        sar rbx, 3      ; shifting the bytes by 3 is the same as dividing by 8, this is byte offset
        sal rbx, 3      ; shifting left by 3 multiplies by 8 to start getting bit offset
        sub rax, rbx    ; final bit offset calculated
        mov rbx, 8      ; move 8 (size of character) into rbx
        sub rbx, rax    ; subtract rax (bit offset) from character size
        mov rbx, 8      ; move character byte size into rbx
        sub rbx, rax    ; subtract rax (bit offset) from character size
        sub rbx, 1      ; subtract a one
        mov  rsi, 0
        mov  rax, 1
        compare_shift:
            cmp  rbx, rsi
            jne shift_2
            jmp fin_2
        shift_2:
            sal rax, 1
            add rsi, 1
            jmp compare_shift
        fin_2:
            sal rdx, 5
            add  rdx, rcx
            sar  rdx, 3
            mov  rbx, [rdi+rdx]
            and  rbx, rax
            cmp  rbx, 0
            jg  true_return
            jmp false_return
        true_return:
            mov rax, 1
            mov rsp, rbp        ; restore stack pointer to before we pushed parameters onto the stack
            pop rbp             ; remove rbp from the stack to restore rsp to initial value
            ret                 ; return value in rax
        false_return:
            mov rax, 0
            mov rsp, rbp
            pop rbp
            ret