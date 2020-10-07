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
    
    mode_sel db 13,10,13,10,"Select th mode: ",13,10,"1. 1-Player mode ",13,10,"2. 2-Player mode$" 
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

    msg_score db "Score: $"

    fp_lives db 5
    fp_hits db 0
    fp_errors db 0 
    fp_score db 0
    sp_lives db 5  
    sp_hits db 0
    sp_errors db 0 
    sp_score db 0
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