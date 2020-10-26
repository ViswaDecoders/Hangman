data segment  
    welcome db "**********************************************************              ",13,10
            db "**  _    _          _   _  _____ __  __          _   _  **              ",13,10
            db "** | |  | |   /\   | \ | |/ ____|  \/  |   /\   | \ | | **  +-------+   ",13,10
            db "** | |__| |  /  \  |  \| | |  __| \  / |  /  \  |  \| | **  |   |       ",13,10
            db "** |  __  | / /\ \ | . ` | | |_ | |\/| | / /\ \ | . ` | **  |   |       ",13,10
            db "** | |  | |/ ____ \| |\  | |__| | |  | |/ ____ \| |\  | **  |   O       ",13,10
            db "** |_|  |_/_/    \_\_| \_|\_____|_|  |_/_/    \_\_| \_| **  |  /|\      ",13,10
            db "**              _____          __  __ ______			**  |   |       ",13,10
            db "**             / ____|   /\   |  \/  |  ____|	       **  |  / \       ",13,10
            db "**            | |  __   /  \  | \  / | |__  		    **  |           ",13,10      
            db "**            | | |_ | / /\ \ | |\/| |  __| 		    **  +----------+",13,10
            db "**            | |__| |/ ____ \| |  | | |____ 	       **  |          | ",13,10
            db "**             \_____/_/    \_\_|  |_|______|           **  |          |",13,10
            db "**                                                      **  +----------+",13,10
            db "**********************************************************              ",13,10
            db "                                                                        ",13,10    
            db "                                                                        ",13,10
            db "                                                                        ",13,10
            db "                                                                        ",13,10
            db "                              ---Presents---                            ",13,10 
            db "                         19BPS1014 A.L.Viswanath                        ",13,10
            db "                         19BPS1010 G.Anurag                             ",13,10
            db "                                                                        ",13,10
            db "                                                                        ",13,10 
            db "$"
            
    welcome_message db "                              HANGMAN - GAME $" 
    
    mode_sel db 13,10,13,10,"Select th mode: ",13,10,"1. 1-Player mode ",13,10,"2. 2-Player mode ",13,10,"3. Rapid Mode",13,10,"4. Time-Limit mode$" 
    sel_opt db 13,10,13,10,"Enter the mode number: $"                         ;13-for next line,10- carrriage return
    type_message db "Type a letter: $"
    new_line db 13,10,"$"
    win_message db "YOU WIN!$" 
    win_message1 db "Correct Guesss!!!$"
    lose_message db "YOU LOSE!$"  
    lose_message1 db "OOpss!! out of lives...$" 
    tie_message db 13,10,13,10,"Tie$"
      
    word db "bollywood$"
    discovered_word db 9 dup("_"),"$"
    word_size db 9  
    lives db 5                   
    hits db 0
    errors db 0
    bell db 7  
    
    msg_lives db 13,10,13,10,"Lives: $"
    msg_topic db 13,10,13,10,"Enter the Genre: $" 
    msg_topics db 13,10,13,10,"Genre : $"
    topic1 db 50,?,50 dup('$')                                                ;50 is size,? is empty value,fill 50 value with $
    msg_fplname db 13,10,13,10,"Please enter the first player's name: $"
    fplname db 50,?,50 dup('$') 
    msg_splname db 13,10,13,10,"Please enter the second player's name: $"
    splname db 50,?,50 dup('$')   
    
    msg1 db 13,10,13,10,"player 1 name: $"
    msg2 db 13,10,13,10,"player 2 name: $"
    
    topic2 db 50,?,50 dup('$')
    msg_fplword db 13,10,13,10,"Player1 enter your secret word: $"
    fplword db 50,?,50 dup("$")  
    fplword_len db ?  
    dis_fplword db 50,?,50 dup("$") 
    msg_fpl db 13,10,13,10,"Player 1 turn:  $",13,10,13,10
    msg_splword db 13,10,13,10,"Player2 enter your secret word: $"
    splword db 50,?,50 dup("$")
    splword_len db ?
    dis_splword db 50,?,50 dup("$")
    msg_spl db 13,10,13,10,"Player 2 turn:  $",13,10,13,10    

    msg_win1 db 13,10,13,10,"the winner is : $"

    msg_score db 13,10,13,10,"Total Score(Out of 10) is : $"

    fp_lives db 5
    fp_hits db 0
    fp_errors db 0 
    fp_score db 0
    sp_lives db 5  
    sp_hits db 0
    sp_errors db 0 
    sp_score db 0   
    
    string1 db "canoe$"    
    str1_dword db 5 dup("_"),"$"
    str1_size db 5h
    string2 db "doberman$"     
    str2_dword db 8 dup("_"),"$" 
    str2_size db 8h
    string3 db "frame$"        
    str3_dword db 5 dup("_"),"$" 
    str3_size db 5h
    string4 db "banana$"       
    str4_dword db 6 dup("_"),"$"
    str4_size db 6h
    string5 db "orange$"       
    str5_dword db 6 dup("_"),"$"
    str5_size db 6h
    string6 db "frigate$"      
    str6_dword db 7 dup("_"),"$"
    str6_size db 7h
    string7 db "ketchup$"      
    str7_dword db 7 dup("_"),"$" 
    str7_size db 7h
    string8 db "postal$"       
    str8_dword db 6 dup("_"),"$"
    str8_size db 6h
    string9 db "basket$"       
    str9_dword db 6 dup("_"),"$"
    str9_size db 6h                                                  
    string10 db "cabinet$"     
    str10_dword db 7 dup("_"),"$"
    str10_size db 7h
    score db 0  
    
    msg_time db 13,10,13,10,"Enter the time-limit :$" 
    mtime dw ?      
    cnt dw 0
    word1 db "pneumonoultramicroscopicsilicovolcanoconiosis$" 
    dis_wrd db 45 dup("_"),"$" 
    wrd_len db 45
    
data ends

print macro str           ;to print the string
    lea dx,str
    mov ah,09h
    int 21h
endm 

ring macro bell
    mov dl,bell            
    mov ah,02h
    int 21h
endm

type macro num
    mov dl,num
    mov ah,02h
    int 21h
endm

scan macro str            ; read a string from keyboard and return to al
    lea dx,str
    mov ah,0ah 
    int 21h
endm

check macro lives,errors,word_size,hits              
    mov bl,lives
    mov bh,errors
    cmp bl,bh
    je  game_over
    
    mov bl,word_size
    mov bh,hits
    cmp bl,bh
    je  game_win
endm 

check1 macro lives,errors,word_size,hits              
    mov bl,lives
    mov bh,errors
    cmp bl,bh
    je  game_over1
    
    mov bl,word_size
    mov bh,hits
    cmp bl,bh
    je  game_win1
endm 

check2 macro lives,errors,word_size,hits              
    mov bl,lives
    mov bh,errors
    cmp bl,bh
    je  game_over2
    
    mov bl,word_size
    mov bh,hits
    cmp bl,bh
    je  game_win2
endm

update macro word,discovered_word,hits,errors 
    LOCAL update_loop,increment,equals,end_word,end_update      ; note: while using macros need to do that if we are calling macros in repeatitions 
    lea si,word
    lea di,discovered_word     
    mov bx,0
        
    update_loop:
        cmp ds:[si],"$"
        je  end_word
    
        ; check if letter is already taken
        cmp ds:[di],al
        je  increment
    
        ; check if letter is on the word    
        cmp ds:[si],al
        je  equals
                 
    increment:
        inc si
        inc di   
        jmp update_loop    
                 
    equals:
        mov ds:[di],al
        inc hits
        mov bx,1
        jmp increment             
    
    end_word:  
        cmp bx,1
        je  end_update
    
        inc errors      
    
    end_update:
endm        

code segment
start:                            ; set segment registers
    mov ax,data
    mov ds,ax
                 
main:
    print welcome                                 ; main
    mov cx,500
lp: loop lp
    call clear_screen
    print welcome_message    
    print mode_sel
     
    print sel_opt
                
    call read_keyboard
    cmp al,'1' 
    je main_loop
    
    cmp al,'2'
    je main_loop2 
    
    cmp al,'3'
    je rapid  
    
    cmp al,'4'
    je time
    
main_loop:  
    call clear_screen  
    print welcome_message
    
    print new_line
    print new_line
    
    print msg_lives
    mov bl,5h
    sub bl,errors 
    add bl,30h
    type bl
    
    print new_line
    print new_line
    
    print discovered_word
    
    print new_line
    print new_line
    
    check lives,errors,word_size,hits
    
    print type_message
    
    call read_keyboard
    update word,discovered_word,hits,errors
    ring bell     
       
    call clear_screen     
    loop main_loop 
        
main_loop2:
    call clear_screen                 ; first player details
    print welcome_message
                        
    print msg_fplname 
    scan fplname 
    
    print msg1
    print fplname+2
     
    print msg_topic
    scan topic1   
    
    print msg_fplword
    scan fplword   
    
    mov bl,fplword+1
    ;add bl,30h
    mov fplword_len,bl
    
    xor cx,cx                       ; to create dicovered word of first player with "-"
    mov cl,fplword_len
    lea si,dis_fplword
l1: mov al,'_'
    mov [si],al
    inc si
    loop l1         
                               
    call clear_screen                  ; second player details
    print welcome_message
    
    print msg_splname  
    scan splname 
     
    print msg2
    print splname+2
                 
    print msg_topic
    scan topic2
           
    print msg_splword  
    scan splword
    
    xor cx,cx   
    mov bl,splword+1                      ; to store the int value in variable
    ;add bl,30h                           ; add will give ascii value of 4
    mov splword_len,bl 
    
    mov cl,splword_len
    lea si,dis_splword
l2: mov al,'_'
    mov [si],al
    inc si
    loop l2 

fpl:
    call clear_screen                  
    print welcome_message
    print msg_fpl
    print msg_topics
    print topic1+2
    
    print new_line
    print new_line
    
    print msg_lives
    mov bl,5h
    sub bl,fp_errors 
    add bl,30h
    type bl
    
    print new_line
    print new_line
    
    print dis_splword
    
    print new_line
    print new_line
    
    check1 fp_lives,fp_errors,splword_len,fp_hits
    
    print type_message
    
    call read_keyboard   
    update splword+2,dis_splword,fp_hits,fp_errors   
    ring bell  
    
    call clear_screen        
    loop fpl
         
spl:
    call clear_screen                  
    print welcome_message
    print msg_spl 
    print msg_topics
    print topic2+2
    
    print new_line
    print new_line
    
    print msg_lives
    mov bl,5h
    sub bl,sp_errors 
    add bl,30h
    type bl 
    
    print new_line
    print new_line
    
    print dis_fplword
    
    print new_line
    print new_line
    
    check2 sp_lives,sp_errors,fplword_len,sp_hits
    
    print type_message
    
    call read_keyboard   
    update fplword+2,dis_fplword,sp_hits,sp_errors   
    ring bell
    call clear_screen        
    loop spl  
    
rapid:
    call clear_screen  
    print welcome_message
    MOV AH, 00h  ; interrupts to get system time        
    INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

    mov  ax, dx
    xor  dx, dx
    mov  cx, 4    
    div  cx       ; here dx contains the remainder of the division - from 0 to 3
    mov ch,0FFh   ; resetting cx
    mov cl,0FFh
    add  dl, '0'  ; to ascii from '0' to '9'
    cmp dl,'0'
    je r0
    cmp dl,'1'
    je r1
    cmp dl,'2'
    je r2
    cmp dl,'3'
    je r3
    r0:                             ; random words in order of 1,2,3,...,10
        s1: call clear_screen  
            print welcome_message
   
            print new_line
            print new_line
   
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str1_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc11
                
            mov bl,str1_size
            mov bh,hits
            cmp bl,bh
            je  sc1
     
            print type_message
    
            call read_keyboard
            update string1,str1_dword,hits,errors
            ring bell          
            loop s1
        sc1:inc score
        sc11:mov hits,0h
             mov errors,0h       
        s2: call clear_screen  
            print welcome_message
   
            print new_line
            print new_line
   
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str2_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc22
                
            mov bl,str2_size
            mov bh,hits
            cmp bl,bh
            je  sc2
     
            print type_message
    
            call read_keyboard
            update string2,str2_dword,hits,errors
            ring bell          
            loop s2
        sc2:inc score
        sc22:mov hits,0h
             mov errors,0h  
        s3: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str3_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc33
    
            mov bl,str3_size
            mov bh,hits
            cmp bl,bh
            je  sc3
    
            print type_message
    
            call read_keyboard
            update string3,str3_dword,hits,errors
            ring bell     
            loop s3
        sc3:inc score
        sc33:mov hits,0h
             mov errors,0h
        s4: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str4_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc44
    
            mov bl,str4_size
            mov bh,hits
            cmp bl,bh
            je  sc4
    
            print type_message
    
            call read_keyboard
            update string4,str4_dword,hits,errors
            ring bell     
            loop s4
        sc4:inc score
        sc44:mov hits,0h
             mov errors,0h
        s5: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str5_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc55
    
            mov bl,str5_size
            mov bh,hits
            cmp bl,bh
            je  sc5
    
            print type_message
    
            call read_keyboard
            update string5,str5_dword,hits,errors
            ring bell     
            loop s5
        sc5:inc score
        sc55:mov hits,0h
             mov errors,0h
        s6: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str6_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc66
    
            mov bl,str6_size
            mov bh,hits
            cmp bl,bh
            je  sc6
    
            print type_message
    
            call read_keyboard
            update string6,str6_dword,hits,errors
            ring bell     
            loop s6
        sc6:inc score
        sc66:mov hits,0h
             mov errors,0h
        s7: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str7_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc77
    
            mov bl,str7_size
            mov bh,hits
            cmp bl,bh
            je  sc7
    
            print type_message
    
            call read_keyboard
            update string7,str7_dword,hits,errors
            ring bell     
            loop s7
        sc7:inc score
        sc77:mov hits,0h
             mov errors,0h
        s8: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str8_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc88
    
            mov bl,str8_size
            mov bh,hits
            cmp bl,bh
            je  sc8
    
            print type_message
    
            call read_keyboard
            update string8,str8_dword,hits,errors
            ring bell      
            loop s8
        sc8:inc score
        sc88:mov hits,0h
             mov errors,0h
        s9: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str9_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc99
    
            mov bl,str9_size
            mov bh,hits
            cmp bl,bh
            je  sc9
    
            print type_message
    
            call read_keyboard
            update string9,str9_dword,hits,errors
            ring bell            
            loop s9
        sc9:inc score
        sc99:mov hits,0h
             mov errors,0h
        s10:call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str10_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc00
    
            mov bl,str10_size
            mov bh,hits
            cmp bl,bh
            je  sc0
    
            print type_message
    
            call read_keyboard
            update string10,str10_dword,hits,errors
            ring bell         
            loop s10
        sc0:inc score
        sc00:mov hits,0h
             mov errors,0h
        jmp scoreboard
    r1:      ; random order in 5,2,9,8,7,6,3,10,4,1
        s_5: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str5_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc_55
    
            mov bl,str5_size
            mov bh,hits
            cmp bl,bh
            je  sc_5
    
            print type_message
    
            call read_keyboard
            update string5,str5_dword,hits,errors
            ring bell         
            loop s_5
        sc_5:inc score
        sc_55:mov hits,0h
             mov errors,0h    
        s_2: call clear_screen  
            print welcome_message
   
            print new_line
            print new_line
   
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str2_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc_22
                
            mov bl,str2_size
            mov bh,hits
            cmp bl,bh
            je  sc_2
     
            print type_message
    
            call read_keyboard
            update string2,str2_dword,hits,errors
            ring bell        
            loop s_2
        sc_2:inc score
        sc_22:mov hits,0h
             mov errors,0h 
        s_9: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str9_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc_99
    
            mov bl,str9_size
            mov bh,hits
            cmp bl,bh
            je  sc_9
    
            print type_message
    
            call read_keyboard
            update string9,str9_dword,hits,errors
            ring bell           
            loop s_9
        sc_9:inc score
        sc_99:mov hits,0h
             mov errors,0h 
        s_8: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str8_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc_88
    
            mov bl,str8_size
            mov bh,hits
            cmp bl,bh
            je  sc_8
    
            print type_message
    
            call read_keyboard
            update string8,str8_dword,hits,errors
            ring bell           
            loop s_8
        sc_8:inc score
        sc_88:mov hits,0h
             mov errors,0h        
        s_7: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str7_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc_77
    
            mov bl,str7_size
            mov bh,hits
            cmp bl,bh
            je  sc_7
    
            print type_message
    
            call read_keyboard
            update string7,str7_dword,hits,errors
            ring bell           
            loop s_7
        sc_7:inc score
        sc_77:mov hits,0h
             mov errors,0h
        s_6: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str6_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc_66
    
            mov bl,str6_size
            mov bh,hits
            cmp bl,bh
            je  sc_6
    
            print type_message
    
            call read_keyboard
            update string6,str6_dword,hits,errors
            ring bell         
            loop s_6
        sc_6:inc score
        sc_66:mov hits,0h
             mov errors,0h
        s_10:call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str10_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc_00
    
            mov bl,str10_size
            mov bh,hits
            cmp bl,bh
            je  sc_0
    
            print type_message
    
            call read_keyboard
            update string10,str10_dword,hits,errors
            ring bell           
            loop s_10 
        s_3: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str3_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc_33
    
            mov bl,str3_size
            mov bh,hits
            cmp bl,bh
            je  sc_3
    
            print type_message
    
            call read_keyboard
            update string3,str3_dword,hits,errors
            ring bell      
            loop s_3
        sc_3:inc score
        sc_33:mov hits,0h
             mov errors,0h
        sc_0:inc score
        sc_00:mov hits,0h
             mov errors,0h
        s_4: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str4_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc_44
    
            mov bl,str4_size
            mov bh,hits
            cmp bl,bh
            je  sc_4
    
            print type_message
    
            call read_keyboard
            update string4,str4_dword,hits,errors
            ring bell           
            loop s_4
        sc_4:inc score
        sc_44:mov hits,0h
             mov errors,0h
        s_1: call clear_screen  
            print welcome_message
   
            print new_line
            print new_line
   
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str1_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc_11
                
            mov bl,str1_size
            mov bh,hits
            cmp bl,bh
            je  sc_1
     
            print type_message
    
            call read_keyboard
            update string1,str1_dword,hits,errors
            ring bell       
            loop s_1
        sc_1:inc score
        sc_11:mov hits,0h
             mov errors,0h   
        jmp scoreboard
    r2:     ; random order of 7,6,3,2,1,9,4,8,10,5
        s\7: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str7_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc\77
    
            mov bl,str7_size
            mov bh,hits
            cmp bl,bh
            je  sc\7
    
            print type_message
    
            call read_keyboard
            update string7,str7_dword,hits,errors
            ring bell            
            loop s\7
        sc\7:inc score
        sc\77:mov hits,0h
             mov errors,0h  
        s\6: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str6_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc\66
    
            mov bl,str6_size
            mov bh,hits
            cmp bl,bh
            je  sc\6
    
            print type_message
    
            call read_keyboard
            update string6,str6_dword,hits,errors
            ring bell         
            loop s\6
        sc\6:inc score
        sc\66:mov hits,0h
             mov errors,0h      
        s\3: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str3_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc\33
    
            mov bl,str3_size
            mov bh,hits
            cmp bl,bh
            je  sc\3
    
            print type_message
    
            call read_keyboard
            update string3,str3_dword,hits,errors
            ring bell           
            loop s\3
        sc\3:inc score
        sc\33:mov hits,0h
             mov errors,0h 
        s\2: call clear_screen  
            print welcome_message
   
            print new_line
            print new_line
   
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str2_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc\22
                
            mov bl,str2_size
            mov bh,hits
            cmp bl,bh
            je  sc\2
     
            print type_message
    
            call read_keyboard
            update string2,str2_dword,hits,errors
            ring bell          
            loop s\2
        sc\2:inc score
        sc\22:mov hits,0h
             mov errors,0h
        s\1: call clear_screen  
            print welcome_message
   
            print new_line
            print new_line
   
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str1_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc\11
                
            mov bl,str1_size
            mov bh,hits
            cmp bl,bh
            je  sc\1
     
            print type_message
    
            call read_keyboard
            update string1,str1_dword,hits,errors
            ring bell         
            loop s\1
        sc\1:inc score
        sc\11:mov hits,0h
             mov errors,0h 
        s\9: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str9_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc\99
                  
            mov bl,str9_size
            mov bh,hits
            cmp bl,bh
            je  sc\9
    
            print type_message
    
            call read_keyboard
            update string9,str9_dword,hits,errors
            ring bell          
            loop s\9
        sc\9:inc score
        sc\99:mov hits,0h
             mov errors,0h 
        s\4: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str4_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc\44
    
            mov bl,str4_size
            mov bh,hits
            cmp bl,bh
            je  sc\4
    
            print type_message
    
            call read_keyboard
            update string4,str4_dword,hits,errors
            ring bell       
            loop s\4
        sc\4:inc score
        sc\44:mov hits,0h
             mov errors,0h
        s\8: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str8_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc\88
    
            mov bl,str8_size
            mov bh,hits
            cmp bl,bh
            je  sc\8
    
            print type_message
    
            call read_keyboard
            update string8,str8_dword,hits,errors
            ring bell         
            loop s\8
        sc\8:inc score
        sc\88:mov hits,0h
             mov errors,0h 
        s\10:call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str10_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc\00
    
            mov bl,str10_size
            mov bh,hits
            cmp bl,bh
            je  sc\0
    
            print type_message
    
            call read_keyboard
            update string10,str10_dword,hits,errors
            ring bell           
            loop s\10
        sc\0:inc score
        sc\00:mov hits,0h
             mov errors,0h
        s\5: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str5_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc\55
    
            mov bl,str5_size
            mov bh,hits
            cmp bl,bh
            je  sc\5
    
            print type_message
    
            call read_keyboard
            update string5,str5_dword,hits,errors
            ring bell         
            loop s\5
        sc\5:inc score
        sc\55:mov hits,0h
             mov errors,0h
        jmp scoreboard
    r3:          ; random order of 9,3,10,7,1,6,8,5,2,4      
        s`9: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str9_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc`99
    
            mov bl,str9_size
            mov bh,hits
            cmp bl,bh
            je  sc`9
    
            print type_message
    
            call read_keyboard
            update string9,str9_dword,hits,errors
            ring bell            
            loop s`9
        sc`9:inc score
        sc`99:mov hits,0h
             mov errors,0h
        s`3: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str3_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc`33
    
            mov bl,str3_size
            mov bh,hits
            cmp bl,bh
            je  sc`3
    
            print type_message
    
            call read_keyboard
            update string3,str3_dword,hits,errors
            ring bell           
            loop s`3
        sc`3:inc score
        sc`33:mov hits,0h
             mov errors,0h
        s`10:call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str10_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc`00
    
            mov bl,str10_size
            mov bh,hits
            cmp bl,bh
            je  sc`0
    
            print type_message
    
            call read_keyboard
            update string10,str10_dword,hits,errors
            ring bell           
            loop s`10
        sc`0:inc score
        sc`00:mov hits,0h
             mov errors,0h
        s`7: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str7_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc`77
    
            mov bl,str7_size
            mov bh,hits
            cmp bl,bh
            je  sc`7
    
            print type_message
    
            call read_keyboard
            update string7,str7_dword,hits,errors
            ring bell           
            loop s`7
        sc`7:inc score
        sc`77:mov hits,0h
             mov errors,0h
        s`1: call clear_screen  
            print welcome_message
   
            print new_line
            print new_line
   
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str1_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc`11
                
            mov bl,str1_size
            mov bh,hits
            cmp bl,bh
            je  sc`1
     
            print type_message
    
            call read_keyboard
            update string1,str1_dword,hits,errors
            ring bell           
            loop s`1
        sc`1:inc score
        sc`11:mov hits,0h
             mov errors,0h
        s`6: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str6_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc`66
    
            mov bl,str6_size
            mov bh,hits
            cmp bl,bh
            je  sc`6
    
            print type_message
    
            call read_keyboard
            update string6,str6_dword,hits,errors
            ring bell          
            loop s`6
        sc`6:inc score
        sc`66:mov hits,0h
             mov errors,0h        
        s`8: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str8_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc`88
    
            mov bl,str8_size
            mov bh,hits
            cmp bl,bh
            je  sc`8
    
            print type_message
    
            call read_keyboard
            update string8,str8_dword,hits,errors
            ring bell          
            loop s`8
        sc`8:inc score
        sc`88:mov hits,0h
             mov errors,0h  
        s`5: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str5_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc`55
    
            mov bl,str5_size
            mov bh,hits
            cmp bl,bh
            je  sc`5
    
            print type_message
    
            call read_keyboard
            update string5,str5_dword,hits,errors
            ring bell          
            loop s`5
        sc`5:inc score
        sc`55:mov hits,0h
             mov errors,0h
        s`2: call clear_screen  
            print welcome_message
   
            print new_line
            print new_line
   
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str2_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc`22
                
            mov bl,str2_size
            mov bh,hits
            cmp bl,bh
            je  sc`2
     
            print type_message
    
            call read_keyboard
            update string2,str2_dword,hits,errors
            ring bell           
            loop s`2
        sc`2:inc score
        sc`22:mov hits,0h
             mov errors,0h  
        s`4: call clear_screen  
            print welcome_message
    
            print new_line
            print new_line
    
            print msg_lives
            mov bl,5h
            sub bl,errors 
            add bl,30h
            type bl
    
            print new_line
            print new_line
    
            print str4_dword
    
            print new_line
            print new_line
    
            mov bl,lives
            mov bh,errors
            cmp bl,bh
            je  sc`44
    
            mov bl,str4_size
            mov bh,hits
            cmp bl,bh
            je  sc`4
    
            print type_message
    
            call read_keyboard
            update string4,str4_dword,hits,errors
            ring bell        
            loop s`4
        sc`4:inc score
        sc`44:mov hits,0h
             mov errors,0h

        jmp scoreboard          

time: 
        call clear_screen 
        print welcome_message 
        print msg_time
        xor ax,ax 
        mov ah,1h
        int 21h
        mov bx,60
        mul bx
        mov bx,130
        mul bx
        mov mtime,ax 
        
        call clear_screen 
        
    k:
        print welcome_message
    
        print new_line
        print new_line
        print new_line
    
        print dis_wrd
        
        print new_line
        print new_line
        
        mov bl,wrd_len
        mov bh,hits
        cmp bl,bh
        je  m
        
        print type_message
    
        call read_keyboard
        update word1,dis_wrd,hits,errors
        ring bell     
        inc cnt
        call clear_screen     
        loop k 
    m:  mov ax,mtime
        mov bx,cnt
        cmp ax,bx
        jge m1
        jle m2
    m1: print new_line
        print new_line
        call game_over
    m2: print new_line
        print new_line
        call game_win        
        
                      
game_over: 
    print lose_message
 
    jmp  fim


game_win:
    print win_message
    
    jmp  fim 
    
game_over1: 
    print lose_message1
    mov cx,600
l:  loop l
    jmp  spl


game_win1:
    print win_message1 
    inc fp_score
    mov cx,600
ll: loop ll
    jmp  spl 
    
game_over2: 
    print lose_message1
    mov cx,600
l3:  loop l3
    jmp  winner


game_win2:
    print win_message1
    inc sp_score
    mov cx,600
ll1: loop ll1
    jmp  winner  

winner:
    call clear_screen
    print welcome_message
    mov bl,fp_score
    mov cl,sp_score
    cmp bl,cl
    je tie
    jge greater
    print msg_win1
    print fplname+2
    jmp fim
    greater:
        print msg_win1
        print splname+2 
        jmp fim
    tie:
        print tie_message
        jmp fim 
        
scoreboard:
    call clear_screen
    print welcome_message
    print msg_score
    mov bl,score 
    add bl,30h
    type bl
    jmp fim
  
clear_screen:   ; get and set video mode
    mov ah,0fh
    int 10h   
    
    mov ah,0
    int 10h
    ret
        
read_keyboard:  ; read keyborad and return in al
    mov ah,01h
    int 21h       
    ret
    
fim:
    jmp fim         
      
code ends
end start                                   