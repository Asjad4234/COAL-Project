; Restaurant Management and Billing System

Include Irvine32.inc
Buffer_size = 500
.data
    choice BYTE "Would you like to (Enter 1) Dine-IN /  (Enter 2) TakeAway ",0
    table BYTE "No of tables available are ",0
    selection BYTE "Enter 1 to book a table / Enter 2 to takeaway  :  ",0
    booking BYTE "Your Reservation is done for  ",0
    bill DWORD 0

    ; Welcome message
    welcomeMsg BYTE '      Welcome to Elysian Eats: A Culinary Haven                  ', 0dh, 0ah, 0

    ; Main menu
    mainMenu BYTE '      Menu:                                                      ', 0dh, 0ah
             BYTE '      Enter 1 - SIGNATURE Dishes                                 ', 0dh, 0ah
             BYTE '      Enter 2 - CHINESE Dishes                                   ', 0dh, 0ah
             BYTE '      Enter 3 - Fast food                                        ', 0dh, 0ah
             BYTE '      Enter 4 - Drinks                                           ', 0dh, 0ah
             BYTE '      Enter 5 - Dessert                                          ', 0dh, 0ah
             BYTE '      Enter 6 - Exit                                             ', 0dh, 0ah, 0

    ; Continue or finish menu
    continueMenu BYTE '      Enter 1 - Would you like anything else?', 0dh, 0ah
                 BYTE '      Enter 2 - That''s All', 0dh, 0ah, 0

    ; Breads menu
    breadsMenu BYTE '      BREADS                                                     ', 0dh, 0ah
               BYTE '      Enter 1 - Naan                         = Rs 20             ', 0dh, 0ah
               BYTE '      Enter 2 - Roti                         = Rs 15             ', 0dh, 0ah
               BYTE '      Enter 3 - Paratha                      = Rs 30             ', 0dh, 0ah
               BYTE '      Enter 4 - Garlic Bread                 = Rs 50             ', 0dh, 0ah
               BYTE '      Enter 5 - Shermaal                     = Rs 25             ', 0dh, 0ah
               BYTE '      Enter 6 - Exit                                             ', 0dh, 0ah, 0
    buffer3 DWORD 20, 15, 30, 50, 25

    ; Signature dishes menu
    signatureMenu BYTE '      SIGNATURE DISHES MENU                                      ', 0dh, 0ah
                  BYTE '      Enter 1 - Chicken Biryani              = Rs 100 per plate  ', 0dh, 0ah
                  BYTE '      Enter 2 - Chicken Karahi               = Rs 90 per plate   ', 0dh, 0ah
                  BYTE '      Enter 3 - Chicken Tikka                = Rs 70 per plate   ', 0dh, 0ah
                  BYTE '      Enter 4 - Chicken Haleem               = Rs 85 per plate   ', 0dh, 0ah
                  BYTE '      Enter 5 - Beef Pulao                   = Rs 200 per plate  ', 0dh, 0ah
                  BYTE '      Enter 6 - Beef Nihari                  = Rs 190 per plate  ', 0dh, 0ah
                  BYTE '      Enter 7 - Mutton Kunna                 = Rs 75 per plate   ', 0dh, 0ah
                  BYTE '      Enter 8 - Mutton Chops                 = Rs 185 per plate  ', 0dh, 0ah
                  BYTE '      Enter 9 - Mutton Biryani               = Rs 150 per plate  ', 0dh, 0ah
                  BYTE '      Enter 10 - Exit                                            ', 0dh, 0ah, 0

    buffer4 DWORD 100, 90, 70, 85, 200, 190, 75, 185, 150

    ; Chinese dishes menu
    chineseMenu BYTE '      CHINESE DISHES MENU                                        ', 0dh, 0ah
                BYTE '      Enter 1 - Egg-Fried Rice               = Rs 150 per plate  ', 0dh, 0ah
                BYTE '      Enter 2 - Chicken Manchurian           = Rs 165 per plate  ', 0dh, 0ah
                BYTE '      Enter 3 - Chicken Spaghetti            = Rs 95 per plate   ', 0dh, 0ah
                BYTE '      Enter 4 - Chicken Shaslik              = Rs 80 per plate   ', 0dh, 0ah
                BYTE '      Enter 5 - Chicken Corn Soup            = Rs 50 per plate   ', 0dh, 0ah
                BYTE '      Enter 6 - Egg rolls                    = Rs 65 per plate   ', 0dh, 0ah
                BYTE '      Enter 7 - Hot n sour soup              = Rs 90 per plate   ', 0dh, 0ah
                BYTE '      Enter 8 - Chowmein                     = Rs 85 per plate   ', 0dh, 0ah
                BYTE '      Enter 9 - Sushi                        = Rs 300 per plate  ', 0dh, 0ah
                BYTE '      Enter 10 - Exit                                            ', 0dh, 0ah, 0

    buffer5 DWORD 150, 165, 95, 80, 50, 65, 90, 85, 300

    ; Fastfood menu
    fastfoodMenu BYTE '      FASTFOOD DISHES MENU                                        ', 0dh, 0ah
                 BYTE '      Enter 1 - Zinger Burger                 = Rs 100            ', 0dh, 0ah
                 BYTE '      Enter 2 - Fajita Pizza                  = Rs 150            ', 0dh, 0ah
                 BYTE '      Enter 3 - French Fries                  = Rs 50             ', 0dh, 0ah
                 BYTE '      Enter 4 - Club Sandwich                 = Rs 200            ', 0dh, 0ah
                 BYTE '      Enter 5 - Chicken Wings                 = Rs 120            ', 0dh, 0ah
                 BYTE '      Enter 6 - Onion Rings                   = Rs 80             ', 0dh, 0ah
                 BYTE '      Enter 7 - Mozzarella Sticks             = Rs 110            ', 0dh, 0ah
                 BYTE '      Enter 8 - Chicken Nuggets               = Rs 90             ', 0dh, 0ah
                 BYTE '      Enter 9 - BBQ Chicken Sandwich          = Rs 180            ', 0dh, 0ah
                 BYTE '      Enter 10 - Exit                                             ', 0dh, 0ah, 0

    buffer6 DWORD 100, 150, 50, 200, 120, 80, 110, 90, 180

    ; Drinks menu
    drinksMenu BYTE '      DRINKS MENU                                                 ', 0dh, 0ah
               BYTE '      Enter 1 - Cold Drinks                   = Rs 90 (1.5 litre) ', 0dh, 0ah
               BYTE '      Enter 2 - Coffee                        = Rs 50 (1.5 litre) ', 0dh, 0ah
               BYTE '      Enter 3 - Margarita                     = Rs 65             ', 0dh, 0ah
               BYTE '      Enter 4 - Mix Fruit Juice               = Rs 70             ', 0dh, 0ah
               BYTE '      Enter 5 - Iced Tea                      = Rs 80             ', 0dh, 0ah
               BYTE '      Enter 6 - Fresh Lemonade                = Rs 75             ', 0dh, 0ah
               BYTE '      Enter 7 - Sparkling Water               = Rs 60             ', 0dh, 0ah
               BYTE '      Enter 8 - Green Tea                     = Rs 85             ', 0dh, 0ah
               BYTE '      Enter 9 - Orange Fizz                   = Rs 95             ', 0dh, 0ah
               BYTE '      Enter 10 - Exit                                              ', 0dh, 0ah, 0

    buffer7 DWORD 90, 50, 65, 70, 80, 75, 60, 85, 95

    ; Dessert menu
    dessertMenu BYTE '      DESSERT MENU                                               ', 0dh, 0ah
                BYTE '      Enter 1 - Chocolate Brownie            = Rs 155            ', 0dh, 0ah
                BYTE '      Enter 2 - Red Velvet Cake              = Rs 145            ', 0dh, 0ah
                BYTE '      Enter 3 - Banana Pancakes              = Rs 75             ', 0dh, 0ah
                BYTE '      Enter 4 - Pineapple Ice-cream          = Rs 60             ', 0dh, 0ah
                BYTE '      Enter 5 - Tiramisu                     = Rs 180            ', 0dh, 0ah
                BYTE '      Enter 6 - Cheesecake                   = Rs 160            ', 0dh, 0ah
                BYTE '      Enter 7 - Chocolate Mousse             = Rs 130            ', 0dh, 0ah
                BYTE '      Enter 8 - Mango Sorbet                 = Rs 90             ', 0dh, 0ah
                BYTE '      Enter 9 - Apple Pie                    = Rs 120            ', 0dh, 0ah
                BYTE '      Enter 10 - Exit                                            ', 0dh, 0ah, 0

    buffer8 DWORD 155, 145, 75, 60, 180, 160, 130, 90, 120

    ; Messages
    msg1 BYTE '      What would you like Today? : ', 0

    msg2 BYTE '      Enter your Choice ', 0

    errorMsg BYTE '      Error! Please follow instructions accordingly', 0dh, 0ah, 0

    ; Quantity input
    Quantity BYTE '      Quantity (btw 1-100):  ', 0

    ; Billing message
    billing BYTE '      Total Bill:   Rs ', 0

    paymentMsg BYTE "How would you like to pay? 1.Card 2.Cash",0ah,0dh,0

    paymenterror BYTE "Please enter correct values & follow the instructions...",0dh,0ah,0

    cardMsg BYTE "Enter your PIN When Ready (4 digit)!!!",0ah,0dh,0

    cashMsg BYTE "Enter your amount : ",0

    InvalidCash BYTE "Amount entered is not sufficient. Enter again..",0ah,0dh,0

    InvalidCard BYTE "Invalid PIN .Please pay through cash.",0dh,0ah,0

    remainder BYTE "Your Updated Bill is RS. ",0
    totalbill BYTE "PAYMENT SUCCESSFUL !!! ",0
    title4 BYTE "Discount",0
    regular BYTE "Are you a regular customer?",0
    discountmsg BYTE "Here is a 10% discount for being a regular customer !!!",0ah,0dh,0
    TipMsg BYTE "DO YOU WANT TO LEAVE A TIP? ",0ah,0dh,0
    TipMoney BYTE "Enter the amount for TIP : ",0
    title1 BYTE "LEAVE A TIP? ",0ah,0dh,0
    title2 BYTE "Rate your experience at Elysian Eats (1-5)",0dh,0ah,0
    rating BYTE "    Your Rating :  ",0
    star1 BYTE "          *         ",0
    star2 BYTE "         * *        ",0
    star3 BYTE "        * * *       ",0
    star4 BYTE "       * * * *      ",0
    star5 BYTE "      * * * * *     ",0
    title3 BYTE "    Feedback       ",0
    feedback BYTE "Would you like to give any feedback..?",0
    response BYTE 100 DUP (?)
    answer BYTE "We value your constructive Feedback....",0
    exitMsg BYTE "THANK YOU FOR VISITING ELYSIAN EATS...",0

    Pin DWORD 1111,2222,3333,1234,5678

    ;FILING

    buffer byte Buffer_size DUP (?)
    bill_buffer DWORD Buffer_size DUP(?)
    filename byte "Bills.txt",0
    filehandle HANDLE ?
    stremp DWORD ?,0
    billToString BYTE 4 DUP(?)
    str2 BYTE "Enter your name: ",0dh,0ah,0
    fmt BYTE "%u",13,10,0



.code
main proc
    call Crlf
    call Crlf
	mov edx,OFFSET welcomeMsg
    call msgbox
    mov eax, black + (lightcyan*16)
    call SetTextColor
    call clrscr
    mov edx,OFFSET choice
    call writestring
    call readdec
    call crlf
    call Checkerror1
    cmp eax,2
    je L1
    mov edx,OFFSET table
    call writestring
    mov eax,+10
    call randomrange
    call writedec
    call crlf
    mov edx,OFFSET selection
    call writestring
    call readdec
    call crlf
    call Checkerror1
    cmp eax,2
    je L1
    mov edx,OFFSET booking
    call writestring
    mov eax,24
    call randomrange
    call writedec
    call crlf
    call crlf
     L1:
       mov edx,OFFSET mainMenu
       call WriteString
       call crlf
       mov edx,OFFSET msg1
       call WriteString
       call ReadDec
       call crlf
       call Checkerror    ; check whether user enter the number in given range

       cmp eax,1      ; comparison b/w what user enter with each item of list
       je L2
       cmp eax,2
       je L3
       cmp eax,3
       je L4
       cmp eax,4
       je L5
       cmp eax,5
       je L6
       jmp last

     L2: call Signature       ; calling procedures depends on what user enters
         jmp L7
     L3: call Chinese
         jmp L7
     L4: call FastFood
         jmp L7
     L5: call Drinks
         jmp L7
     L6: call Dessert
     L7: mov edx,OFFSET continueMenu
         call WriteString
         call crlf
         mov edx,OFFSET msg2
         call crlf
         call WriteString
         call ReadDec
         call Checkerror1
         cmp eax,1           ; if user want to continue then jump to L1
         je L1
     last:                    
        call Crlf
        call Crlf
        mov edx,OFFSET billing
        call WriteString
        mov eax,bill        
        call WriteDec       ; prints the bill
        call Crlf   ; next line
        call Crlf

        invoke CreateFile, ADDR filename, GENERIC_WRITE,0,NULL,OPEN_ALWAYS,FILE_ATTRIBUTE_NORMAL,NULL
        mov filehandle,eax
        invoke SetFilePointer, filehandle,0,0,FILE_END

        call waitmsg
        call clrscr
        mov edx,OFFSET str2
        call writestring
        mov edx,OFFSET buffer
        mov ecx,sizeof buffer
        call readstring
        mov eax,filehandle
        call writetofile
        call crlf

        call BillPayment
        
        mov eax,bill
        push eax                            ; value to be converted
        push OFFSET fmt                     ; first parameter for conversion
        push OFFSET billToString            ; second parameter for conversion
        call wsprintf                       ; function that'll convert the bill to string
        mov ecx,eax

        mov eax,filehandle
        mov edx,OFFSET billToString
        call writetofile

        pop eax
        mov eax,filehandle
        call closefile

        call crlf

          
        exit
main endp


Signature PROC

; print the signature menu and add prices into bill according to which item of what quantity user selects 
; and call another func(NaanRoti) according to requirment
; Receives: string4, buffer4
; Returns: return updated bill
;-----------------------------------------------
         mov edx,OFFSET signatureMenu
         call WriteString
         mov edx,OFFSET msg1
         call WriteString
         call ReadDec
         call Crlf
         call Checkerror3
         cmp eax,1
         je L1
         cmp eax,2
         je L2
         cmp eax,3
         je L3
         cmp eax,4
         je L4
         cmp eax,5
         je l5
         cmp eax,6
         je L6
         cmp eax,7
         je L7
         cmp eax,8
         je L8
         cmp eax,9
         je L9
         cmp eax,10
         je last
 L1: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L1
     cmp eax,1
     jl L1
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer4]      ; buffer4 is array contains price of signature foods
     L11:                   ; quantity times a loop L11 runs           
        add bill,ebx            ; add price into bill
        loop L11
     jmp last
 L2: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L2
     cmp eax,1
     jl L2
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer4 + 4]
     L22:
         add bill,ebx
         loop L22
     call Bread
     jmp last
 L3: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L3
     cmp eax,1
     jl L3
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer4 + 8]
     L33:
         add bill,ebx
         loop L33
     call Bread
     jmp last
 L4: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L4
     cmp eax,1
     jl L4
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer4 + 12]
     L44:
         add bill,ebx
         loop L44
     call Bread
L5: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L5
     cmp eax,1
     jl L5
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer4 + 16]      
     L55:                              
        add bill,ebx            ; add price into bill
        loop L55
     jmp last
 L6: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L6
     cmp eax,1
     jl L6
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer4 + 20]
     L66:
         add bill,ebx
         loop L66
     call Bread
     jmp last
 L7: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L7
     cmp eax,1
     jl L7
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer4 + 24]
     L77:
         add bill,ebx
         loop L77
     call Bread
     jmp last
 L8: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L8
     cmp eax,1
     jl L8
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer4 + 28]
     L88:
         add bill,ebx
         loop L88
     call Bread
     jmp last
L9: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L9
     cmp eax,1
     jl L9
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer4 + 32]
     L99:
         add bill,ebx
         loop L99
     call Bread
     jmp last
last:
ret
Signature ENDP

Bread PROC


; print the menu(naan,roti) and add prices into bill according to which item of what quantity user selects 
; Receives: string3, buffer3
; Returns: return updated bill
;-----------------------------------------------
 
        mov edx,OFFSET breadsMenu
        call WriteString
        mov edx,OFFSET msg1
        call WriteString
        call ReadDec
        call Checkerror2
        cmp eax,1
        je L1
        cmp eax,2
        je L2
        cmp eax,3
        je L3
        cmp eax,4
        je L4
        cmp eax,5
        je L5
        cmp eax,6
        je last
     L1:
        mov ebx,0
        mov ebx,[buffer3]    ; buffer3 is array contains price of Naan and roti
        mov edx,OFFSET Quantity
        call WriteString
        call ReadDec
        cmp eax,100
        jg L1
        cmp eax,1
        jl L1
        call Crlf
        mov ecx,eax
        L11:
          add bill,ebx
          loop L11
       jmp last
     L2:
        mov ebx,0
        mov ebx,[buffer3 + 4]
        mov edx,OFFSET Quantity
        call WriteString
        call ReadDec
        cmp eax,100
        jg L2
        cmp eax,1
        jl L2
        call Crlf
        mov ecx,eax
        L22:
          add bill,ebx
          loop L22
        jmp last
      L3:
        mov ebx,0
        mov ebx,[buffer3 + 8]    
        mov edx,OFFSET Quantity
        call WriteString
        call ReadDec
        cmp eax,100
        jg L3
        cmp eax,1
        jl L3
        call Crlf
        mov ecx,eax
        L33:
          add bill,ebx
          loop L33
       jmp last
     L4:
        mov ebx,0
        mov ebx,[buffer3 + 12]
        mov edx,OFFSET Quantity
        call WriteString
        call ReadDec
        cmp eax,100
        jg L4
        cmp eax,1
        jl L4
        call Crlf
        mov ecx,eax
        L44:
          add bill,ebx
          loop L44
        jmp last
     L5:
        mov ebx,0
        mov ebx,[buffer3 + 16]
        mov edx,OFFSET Quantity
        call WriteString
        call ReadDec
        cmp eax,100
        jg L5
        cmp eax,1
        jl L5
        call Crlf
        mov ecx,eax
        L55:
          add bill,ebx
          loop L55
        jmp last
last:
ret
Bread ENDP


Chinese PROC


; print the chinese menu and add prices into bill according to which item of what quantity user selects 
; Receives: string5, buffer5
; Returns: return updated bill
;-----------------------------------------------

         mov edx,OFFSET chineseMenu
         call WriteString
         mov edx,OFFSET msg1
         call WriteString
         call ReadDec
         call Crlf
         call Checkerror3       ; check for error
         cmp eax,1
         je L1
         cmp eax,2
         je L2
         cmp eax,3
         je L3
         cmp eax,4
         je L4
         cmp eax,5
         je L5
         cmp eax,6
         je L6
         cmp eax,7
         je L7
         cmp eax,8
         je L8
         cmp eax,9
         je L9
         cmp eax,10
         je last

 ; price of 1st,2nd,.. item of Chinese menu is on 1st,2nd.. index of buffer5 respectively
 ; same for all other menus

 L1: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L1
     cmp eax,1
     jl L1
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer5]   
     L11:
        add bill,ebx
        loop L11
     jmp last
 L2: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L2
     cmp eax,1
     jl L2
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer5 + 4]
     L22:
         add bill,ebx
         loop L22
     jmp last
 L3: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L3
     cmp eax,1
     jl L3
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer5 + 8]
     L33:
         add bill,ebx
         loop L33
     jmp last
 L4: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L4
     cmp eax,1
     jl L4
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer5 + 12]
     L44:
         add bill,ebx
         loop L44
    jmp last
 L5: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L5
     cmp eax,1
     jl L5
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer5 + 16]   
     L55:
        add bill,ebx
        loop L55
     jmp last
 L6: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L6
     cmp eax,1
     jl L6
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer5 + 20]
     L66:
         add bill,ebx
         loop L66
     jmp last
 L7: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L7
     cmp eax,1
     jl L7
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer5 + 24]
     L77:
         add bill,ebx
         loop L77
     jmp last
 L8: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L8
     cmp eax,1
     jl L8
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer5 + 28]
     L88:
         add bill,ebx
         loop L88
    jmp last
 L9: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L9
     cmp eax,1
     jl L9
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer5 + 32]
     L99:
         add bill,ebx
         loop L99
last:

ret
Chinese ENDP
         
FastFood PROC


; print the fastfood menu and add prices into bill according to which item of what quantity user selects 
; Receives: string6, buffer6
; Returns: return updated bill
;-----------------------------------------------

         mov edx,OFFSET fastfoodMenu
         call WriteString
         mov edx,OFFSET msg1
         call WriteString
         call ReadDec
         call Crlf
         call Checkerror3
         cmp eax,1
         je L1
         cmp eax,2
         je L2
         cmp eax,3
         je L3
         cmp eax,4
         je L4
         cmp eax,5
         je L5
         cmp eax,6
         je L6
         cmp eax,7
         je L7
         cmp eax,8
         je L8
         cmp eax,9
         je L9
         cmp eax,10
         je last


 L1: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L1
     cmp eax,1
     jl L1
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer6]   
     L11:
        add bill,ebx
        loop L11
     jmp last
 L2: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L2
     cmp eax,1
     jl L2
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer6 + 4]
     L22:
         add bill,ebx
         loop L22
     jmp last
 L3: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L3
     cmp eax,1
     jl L3
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer6 + 8]
     L33:
         add bill,ebx
         loop L33
     jmp last
 L4: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L4
     cmp eax,1
     jl L4
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer6 + 12]
     L44:
         add bill,ebx
         loop L44
    jmp last
 L5: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L5
     cmp eax,1
     jl L5
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer6 + 16]   
     L55:
        add bill,ebx
        loop L55
     jmp last
 L6: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L6
     cmp eax,1
     jl L6
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer6 + 20]
     L66:
         add bill,ebx
         loop L66
     jmp last
 L7: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L7
     cmp eax,1
     jl L7
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer6 + 24]
     L77:
         add bill,ebx
         loop L77
     jmp last
 L8: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L8
     cmp eax,1
     jl L8
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer6 + 28]
     L88:
         add bill,ebx
         loop L88
    jmp last
 L9: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L9
     cmp eax,1
     jl L9
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer6 + 32]
     L99:
         add bill,ebx
         loop L99
last:
ret
FastFood ENDP
         
Drinks PROC


; print the drinks menu and add prices into bill according to which item of what quantity user selects 
; Receives: string7, buffer7
; Returns: return updated bill
;-----------------------------------------------
         mov edx,OFFSET drinksMenu
         call WriteString
         mov edx,OFFSET msg1
         call WriteString
         call ReadDec
         call Crlf
         call Checkerror3
         cmp eax,1
         je L1
         cmp eax,2
         je L2
         cmp eax,3
         je L3
         cmp eax,4
         je L4
         cmp eax,5
         je L5
         cmp eax,6
         je L6
         cmp eax,7
         je L7
         cmp eax,8
         je L8
         cmp eax,9
         je L9
         cmp eax,10
         je last

 L1: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L1
     cmp eax,1
     jl L1
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer7]   
     L11:
        add bill,ebx
        loop L11
     jmp last
 L2: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L2
     cmp eax,1
     jl L2
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer7 + 4]
     L22:
         add bill,ebx
         loop L22
     jmp last
 L3: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L3
     cmp eax,1
     jl L3
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer7 + 8]
     L33:
         add bill,ebx
         loop L33
     jmp last
 L4: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L4
     cmp eax,1
     jl L4
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer7 + 12]
     L44:
         add bill,ebx
         loop L44
    jmp last
 L5: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L5
     cmp eax,1
     jl L5
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer7 + 16]   
     L55:
        add bill,ebx
        loop L55
     jmp last
 L6: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L6
     cmp eax,1
     jl L6
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer7 + 20]
     L66:
         add bill,ebx
         loop L66
     jmp last
 L7: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L7
     cmp eax,1
     jl L7
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer7 + 24]
     L77:
         add bill,ebx
         loop L77
     jmp last
 L8: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L8
     cmp eax,1
     jl L8
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer7 + 28]
     L88:
         add bill,ebx
         loop L88
    jmp last
 L9: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L9
     cmp eax,1
     jl L9
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer7 + 32]
     L99:
         add bill,ebx
         loop L99
last:
ret
Drinks ENDP
         
Dessert PROC


; print the dessert menu and add prices into bill according to which item of what quantity user selects 
; Receives: string8, buffer8
; Returns: return updated bill
;-----------------------------------------------

         mov edx,OFFSET dessertMenu
         call WriteString
         mov edx,OFFSET msg1
         call WriteString
         call ReadDec
         call Crlf
         call Checkerror3
         cmp eax,1
         je L1
         cmp eax,2
         je L2
         cmp eax,3
         je L3
         cmp eax,4
         je L4
         cmp eax,5
         je L5
         cmp eax,6
         je L6
         cmp eax,7
         je L7
         cmp eax,8
         je L8
         cmp eax,9
         je L9
         cmp eax,10
         je last

 
 L1: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L1
     cmp eax,1
     jl L1
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer8]   
     L11:
        add bill,ebx
        loop L11
     jmp last
 L2: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L2
     cmp eax,1
     jl L2
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer8 + 4]
     L22:
         add bill,ebx
         loop L22
     jmp last
 L3: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L3
     cmp eax,1
     jl L3
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer8 + 8]
     L33:
         add bill,ebx
         loop L33
     jmp last
 L4: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L4
     cmp eax,1
     jl L4
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer8 + 12]
     L44:
         add bill,ebx
         loop L44
    jmp last
 L5: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L5
     cmp eax,1
     jl L5
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer8 + 16]   
     L55:
        add bill,ebx
        loop L55
     jmp last
 L6: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L6
     cmp eax,1
     jl L6
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer8 + 20]
     L66:
         add bill,ebx
         loop L66
     jmp last
 L7: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L7
     cmp eax,1
     jl L7
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer8 + 24]
     L77:
         add bill,ebx
         loop L77
     jmp last
 L8: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L8
     cmp eax,1
     jl L8
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer8 + 28]
     L88:
         add bill,ebx
         loop L88
    jmp last
 L9: mov edx,OFFSET Quantity
     call WriteString
     call ReadDec
     cmp eax,100
     jg L9
     cmp eax,1
     jl L9
     call Crlf
     mov ecx,eax
     mov ebx,0
     mov ebx,[buffer8 + 32]
     L99:
         add bill,ebx
         loop L99
last:
ret
Dessert ENDP

Checkerror PROC

; check whether eax contains value in range 1-6
; Receives: eax
; Returns: eax contains value in range 1-6 according to user's choice
;-----------------------------------------------

L1:
   cmp eax,1
   jl L2
   cmp eax,6
   jg L2
   jmp last

L2:
   mov edx, OFFSET errorMsg
   call WriteString
   call ReadDec
   jmp L1
last:
ret
Checkerror ENDP

Checkerror1 PROC

; check whether eax contains value either 1 or 2
; Receives: eax
; Returns: eax contains value either 1 or 2 according to user's choice
;-----------------------------------------------

L1:
   cmp eax,1
   jl L2
   cmp eax,2
   jg L2
   jmp last

L2:
   mov edx, OFFSET errorMsg
   call WriteString
   call ReadDec
   jmp L1
last:
ret
Checkerror1 ENDP

Checkerror2 PROC

; check whether eax contains value in range 1-6
; Receives: eax
; Returns: eax contains value in range 1-6 according to user's choice
;-----------------------------------------------

L1:
   cmp eax,1
   jl L2
   cmp eax,6
   jg L2
   jmp last

L2:
   mov edx, OFFSET errorMsg
   call WriteString
   call ReadDec
   jmp L1
last:
ret
Checkerror2 ENDP

Checkerror3 PROC

; check whether eax contains value in range 1-10
; Receives: eax
; Returns: eax contains value in range 1-10 according to user's choice
;-----------------------------------------------

L1:
   cmp eax,1
   jl L2
   cmp eax,10
   jg L2
   jmp last

L2:
   mov edx, OFFSET errorMsg
   call WriteString
   call ReadDec
   jmp L1
last:
ret
Checkerror3 ENDP


BillPayment PROC uses eax ebx

payment:
mov edx,OFFSET paymentMsg
call writestring
call readdec
cmp eax,2
je Cash
cmp eax,1
je Card
jne redo

Card: 
    mov ebx,OFFSET title4
    mov edx,OFFSET regular
    call msgboxask
    cmp eax,7
    je no_discount
    mov edx,OFFSET discountmsg
    call writestring
    mov eax,bill
    mov ebx,10
    mul ebx
    mov ebx,100
    div ebx
    sub bill,eax
    no_discount:
    mov edx,OFFSET cardMsg
    call writestring
    call readdec
    cmp eax,9999
    jg redo_card
    cmp eax,1000
    jl redo_card
    mov ecx,5
    mov esi,OFFSET Pin
pin_check:
    cmp eax,[esi]
    je proceed
    add esi,4
    loop pin_check
    mov edx,OFFSET Invalidcard
    call writeString
    jmp no_discount2

proceed:
 jmp getTip
 sub eax,bill
 mov ebx,eax
 cmp eax,0
 je go_out

 mov edx,OFFSET TipMsg
 call writestring
 call readdec
 cmp eax,1
 
 jmp go_out

 ;Checks for incorrect inputs
 redo:
    mov edx,OFFSET paymenterror
    call writestring
    jmp payment
    
 redo_card:
    mov edx,OFFSET paymenterror
    call writestring
    jmp no_discount
 
 redo_cash:
    mov edx,OFFSET paymenterror
    call writestring
    jmp no_discount2

 Cash:
    mov ebx,OFFSET title4
    mov edx,OFFSET regular
    call msgboxask
    cmp eax,7
    je no_discount2
    mov edx,OFFSET discountmsg
    call writestring
    mov eax,bill
    mov ebx,10
    mul ebx
    mov ebx,100
    div ebx
    sub bill,eax
    no_discount2:
    mov edx,OFFSET cashMsg
    call writestring
    call readdec
    cmp eax,bill
    jge proceed
    mov edx,OFFSET InvalidCash
    call writestring
    jmp redo_cash
getTip:
    mov edx, OFFSET TipMsg
    mov ebx, OFFSET title1
    call msgboxask
    cmp eax,6
    jne go_out
    mov edx, OFFSET TipMoney
    call writestring
    call readdec
    add bill,eax ; Add the tip to the remaining amount
    mov ebx,bill

go_out:
    call clrscr
    mov edx,OFFSET remainder
    call writestring
    mov ebx,bill
    mov eax,ebx
    call writedec
    call crlf
    re_input:
    mov edx,OFFSET title2
    call writestring
    call readdec
    cmp eax,1
    jl re_input
    cmp eax,5
    jg re_input
    cmp eax,1
    je l1
    cmp eax,2
    je l2
    cmp eax,3
    je l3
    cmp eax,4
    je l4
    cmp eax,5
    je l5
    l1:
        mov ebx,OFFSET rating    
        mov edx,OFFSET star1
        call msgbox
        jmp continue
    l2:
        mov ebx,OFFSET rating    
        mov edx,OFFSET star2
        call msgbox
        jmp continue
    l3:
        mov ebx,OFFSET rating    
        mov edx,OFFSET star3
        call msgbox
        jmp continue
    l4:
        mov ebx,OFFSET rating    
        mov edx,OFFSET star4
        call msgbox
        jmp continue
    l5:
        mov ebx,OFFSET rating    
        mov edx,OFFSET star5
        call msgbox
    continue:
    call crlf
    mov edx,OFFSET feedback
    mov ebx,OFFSET title3
    call msgboxask
    cmp eax,7
    je l6
    mov edx,OFFSET response
    mov ecx,sizeof response
    call readstring
    mov edx,OFFSET answer
    call msgbox
    l6:
    mov ebx,OFFSET totalbill
    mov edx,OFFSET exitMsg
    call msgbox
    ret
    BillPayment ENDP
end main