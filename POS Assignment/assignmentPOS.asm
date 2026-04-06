extern GetStdHandle@4, WriteConsoleA@20, ReadConsoleA@20, ExitProcess@4

; ================================================================
section .data
; ================================================================

newLine db 10, 0

welcomeMsg:
    db '===============================', 10
    db 'Welcome to Mckudonarudo POS system!', 10
    db 'Feeling hungry? Please Order now!', 10
    db '===============================', 10, 0

firstMenuLogin:
    db '===============================', 10
    db 'Please select an option:', 10
    db '1. Login', 10
    db '2. Register', 10
    db '3. Exit', 10
    db '===============================', 10
    db 'selection: ', 0
    
    
confirmationExit:
    db '===============================', 10
    db 'Are you sure want to exit?', 10
    db '===============================', 10
    db '(Y/N): ', 0
    

LOGIN_COUNT db 0

registeringPerk:
    db '=====================================', 10
    db 'Have not registered yet? Register now!', 10
    db 'For 10% off on your first order!', 10
    db '=====================================', 10, 0

promptUserName:
    db '===============================', 10
    db 'Please enter your name: ', 0

promptUserPassword:
    db 'Please enter your password: ', 0

promptConfirmPassword:
    db 'Please confirm your password: ', 0

promptUserLogin:
    db '===============================', 10
    db 'Please enter your name to login: ', 0

promptUserLoginPassword:
    db 'Please enter your password to login: ', 0

successfulLogin:
    db '===============================', 10
    db 'Login successful!', 10
    db '===============================', 10, 0

registrationSuccess:
    db '===============================', 10
    db 'Registration successful! Please login to continue.', 10
    db '===============================', 10, 0

error_fail:
    db '===============================', 10
    db 'You have exceeded the maximum number of login attempts. Exiting....', 10
    db '===============================', 10, 0

error_confirmPassword:
    db '===============================', 10
    db 'Passwords do not match! Please try again.', 10
    db '===============================', 10, 0

error_invalidLogin:
    db '===============================', 10
    db 'Invalid name or password! Please try again.', 10
    db '===============================', 10, 0

menuSelection:
    db '===============================', 10
    db 'Please select what you craving for!', 10
    db '1. Burger', 10
    db '2. Chicken Tenders', 10
    db '3. Spicy Chicken with Nasi Lemak', 10
    db '4. Desserts', 10
    db '5. View Cart & Checkout', 10
    db '6. Exit', 10
    db '===============================', 10
    db 'selection: ', 0

menuDisplayBurger:
    db '===============================', 10
    db 'Burger Selection Menu', 10
    db '1. Classic Burger      - $5.99', 10
    db '2. Cheeseburger        - $6.99', 10
    db '3. Bacon Burger        - $7.99', 10
    db '4. Veggie Burger       - $6.49', 10
    db '5. Bikku Makku Burger  - $8.99', 10
    db '6. Back to Main Menu', 10
    db '===============================', 10
    db 'selection: ', 0

menuDisplayChickenTenders:
    db '===============================', 10
    db 'Chicken Tenders Selection Menu', 10
    db '1. Classic Chicken Tenders     - $4.99', 10
    db '2. Spicy Chicken Tenders       - $5.49', 10
    db '3. Honey Mustard Chicken Tenders - $5.99', 10
    db '4. BBQ Chicken Tenders         - $5.99', 10
    db '5. Back to Main Menu', 10
    db '===============================', 10
    db 'selection: ', 0

menuDisplaySpicyChickenNasiLemak:
    db '===============================', 10
    db 'Spicy Chicken with Nasi Lemak Selection Menu', 10
    db '1. Spicy Chicken with Nasi Lemak - $7.99', 10
    db '2. Back to Main Menu', 10
    db '===============================', 10
    db 'selection: ', 0

menuDisplayDesserts:
    db '===============================', 10
    db 'Desserts Selection Menu', 10
    db '1. Chocolate Lava Cake         - $4.99', 10
    db '2. Vanilla Ice Cream Sundae    - $3.99', 10
    db '3. Strawberry Cheesecake       - $5.49', 10
    db '4. Back to Main Menu', 10
    db '===============================', 10
    db 'selection: ', 0

makeItAMeal:
    db '===============================', 10
    db 'Make it a meal or ala carte?', 10
    db '1. Make it a meal (add $5.00)', 10
    db '2. Ala Carte', 10
    db '3. Back to Menu', 10
    db '===============================', 10
    db 'selection: ', 0

ifAmeal:
    db '===============================', 10
    db 'Choose your side and drink:', 10
    db '1. Regular French Fries', 10
    db '2. Large French Fries      (add $1.00)', 10
    db '3. Regular Soft Drink', 10
    db '4. Large Soft Drink        (add $1.00)', 10
    db '5. Back to Main Menu', 10
    db '===============================', 10
    db 'selection: ', 0

ifAlaCarte:
    db '==================', 10
    db 'Item added to cart!', 10
    db '==================', 10, 0

viewCartMsg:
    db '===============================', 10
    db 'Your cart:', 10
    db '1. Checkout', 10
    db '2. Back to Main Menu', 10
    db '===============================', 10
    db 'selection: ', 0

priceDisplayItemOnScreen:
    db '===============================', 10
    db 'Your current total is: $', 0

taxNote:
    db ' (exclude 6% tax)', 10
    db '===============================', 10, 0

checkOutDisplayPrice:
    db '===============================', 10
    db 'Your final total (include 6% tax): $', 0

checkoutOptions:
    db 10
    db '1. Pay with Card', 10
    db '2. Back to Cart', 10
    db '===============================', 10
    db 'selection: ', 0

payWithCard:
    db '===============================', 10
    db 'Enter your card details to complete the payment.', 10
    db 'Card Number: ', 0

expiryPrompt:
    db 'Expiration Date (MM/YY): ', 0

cvvPrompt:
    db 'CVV: ', 0

payWithCardFailed:
    db '===============================', 10
    db 'Payment failed! Please try again.', 10
    db '===============================', 10, 0

payWithCardSuccessful:
    db '===============================', 10
    db 'Payment successful! Thank you for your order!', 10
    db '===============================', 10, 0

orderAgain:
    db '===============================', 10
    db 'Would you like to order again?', 10
    db '1. Yes', 10
    db '2. No', 10
    db '===============================', 10
    db 'selection: ', 0

thankYouMessage:
    db '===============================', 10
    db 'Thank you for visiting Mckudonarudo! Have a great day!', 10
    db '===============================', 10, 0

emptyCartMsg:
    db '===============================', 10
    db 'Your cart is empty! Please order something first.', 10
    db '===============================', 10, 0

dotStr      db '.', 0
charsWritten dd 0

; ── Prices in cents ──────────────────────────────
; Burgers
priceClassicBurger          dd 599
priceCheeseburger           dd 699
priceBaconBurger            dd 799
priceVeggieBurger           dd 649
priceBikkuMakkuBurger       dd 899

; Chicken Tenders
priceClassicChickenTenders      dd 499
priceSpicyChickenTenders        dd 549
priceHoneyMustardChickenTenders dd 599
priceBBQChickenTenders          dd 599

; Spicy Chicken Nasi Lemak
priceSpicyChickenNasiLemak  dd 799

; Desserts
priceChocolateLavaCake      dd 499
priceVanillaIceCreamSundae  dd 399
priceStrawberryCheesecake   dd 549

; Meal Add-ons
makeItAMealPrice    dd 500
largeFriesPrice     dd 100
largeSoftDrinkPrice dd 100

; Cart
cartTotal   dd 0

; Number print buffer
digitBuf    times 12 db 0

; ================================================================
section .bss
; ================================================================
    hStdOut         resd 1
    hStdIn          resd 1
    inputBuf        resb 64
    charsRead       resd 1

    REGNAME         resb 32
    REGPASSWORD     resb 32
    CONFIRMPASSWORD resb 32
    LOGINNAME       resb 32
    LOGINPASSWORD   resb 32

    cardNumber      resb 20
    expiryDate      resb 8
    cvv             resb 5

; ================================================================
section .text
    global main
; ================================================================

; ────────────────────────────────────────────────
; print_string — print null-terminated string
; usage: push <label>  /  call print_string
; ────────────────────────────────────────────────
print_string:
    push    ebp
    mov     ebp, esp
    push    esi
    push    ecx

    mov     esi, [ebp+8]
    xor     ecx, ecx
.ps_loop:
    cmp     byte [esi+ecx], 0
    je      .ps_done
    inc     ecx
    jmp     .ps_loop
.ps_done:
    push    0
    push    charsWritten
    push    ecx
    push    esi
    push    dword [hStdOut]
    call    WriteConsoleA@20

    pop     ecx
    pop     esi
    pop     ebp
    ret     4

; ────────────────────────────────────────────────
; read_input — reads a line from stdin
; usage: push <buffer address>  /  call read_input
; result stored in buffer
; ────────────────────────────────────────────────
read_input:
    push    ebp
    mov     ebp, esp

    push    0
    push    charsRead
    push    32
    push    dword [ebp+8]
    push    dword [hStdIn]
    call    ReadConsoleA@20

    pop     ebp
    ret     4

; ────────────────────────────────────────────────
; read_char — reads one character from stdin
; returns char in AL
; ────────────────────────────────────────────────
read_char:
    push    ebp
    mov     ebp, esp

    push    0
    push    charsRead
    push    64
    push    inputBuf
    push    dword [hStdIn]
    call    ReadConsoleA@20

    movzx   eax, byte [inputBuf]

    pop     ebp
    ret

; ────────────────────────────────────────────────
; print_number — prints integer
; usage: push <number>  /  call print_number
; ────────────────────────────────────────────────
print_number:
    push    ebp
    mov     ebp, esp
    push    ebx
    push    ecx
    push    edx
    push    edi

    mov     eax, [ebp+8]
    lea     edi, [digitBuf+11]
    mov     byte [edi], 0
    dec     edi

    mov     ebx, 10
.pn_loop:
    xor     edx, edx
    div     ebx
    add     dl, '0'
    mov     [edi], dl
    dec     edi
    test    eax, eax
    jnz     .pn_loop

    inc     edi
    push    edi
    call    print_string

    pop     edi
    pop     edx
    pop     ecx
    pop     ebx
    pop     ebp
    ret     4

; ────────────────────────────────────────────────
; print_cents — prints cents value as X.XX
; usage: push <cents>  /  call print_cents
; ────────────────────────────────────────────────
print_cents:
    push    ebp
    mov     ebp, esp
    push    ebx
    push    edx

    mov     eax, [ebp+8]
    xor     edx, edx
    mov     ebx, 100
    div     ebx                 ; eax = dollars, edx = cents

    push    eax
    call    print_number

    push    dotStr
    call    print_string

    ; always print 2 digit cents
    mov     eax, edx
    cmp     eax, 10
    jge     .no_leading_zero
    ; print leading zero
    push    0
    mov     byte [digitBuf], '0'
    mov     byte [digitBuf+1], 0
    push    digitBuf
    call    print_string
.no_leading_zero:
    push    eax
    call    print_number

    pop     edx
    pop     ebx
    pop     ebp
    ret     4

; ────────────────────────────────────────────────
; compare_strings — compares two strings
; push str2 then str1 before calling
; returns ZF=1 if equal, ZF=0 if not equal
; ────────────────────────────────────────────────
compare_strings:
    push    ebp
    mov     ebp, esp
    push    esi
    push    edi
    push    ecx

    mov     esi, [ebp+8]        ; str1
    mov     edi, [ebp+12]       ; str2

.cmp_loop:
    mov     al, [esi]
    mov     bl, [edi]
    ; strip carriage return and newline
    cmp     al, 13
    je      .cmp_end_check
    cmp     al, 10
    je      .cmp_end_check
    cmp     bl, 13
    je      .cmp_end_check
    cmp     bl, 10
    je      .cmp_end_check
    cmp     al, bl
    jne     .cmp_not_equal
    test    al, al
    jz      .cmp_equal
    inc     esi
    inc     edi
    jmp     .cmp_loop
.cmp_end_check:
    ; one side hit newline — check if other is also ending
    cmp     al, bl
    je      .cmp_equal
    ; one ended, other did not
    mov     al, [esi]
    cmp     al, 13
    je      .both_end
    cmp     al, 10
    je      .both_end
    cmp     al, 0
    je      .both_end
    jmp     .cmp_not_equal
.both_end:
    mov     bl, [edi]
    cmp     bl, 13
    je      .cmp_equal
    cmp     bl, 10
    je      .cmp_equal
    cmp     bl, 0
    je      .cmp_equal
    jmp     .cmp_not_equal
.cmp_equal:
    xor     eax, eax            ; ZF = 1
    jmp     .cmp_done
.cmp_not_equal:
    mov     eax, 1              ; ZF = 0
    test    eax, eax
.cmp_done:
    pop     ecx
    pop     edi
    pop     esi
    pop     ebp
    ret     8

; ════════════════════════════════════════════════
; MAIN
; ════════════════════════════════════════════════
main:
    mov     ebp, esp

    ; Get handles
    push    -11
    call    GetStdHandle@4
    mov     [hStdOut], eax

    push    -10
    call    GetStdHandle@4
    mov     [hStdIn], eax

    ; Print welcome
    push    welcomeMsg
    call    print_string

    push    registeringPerk
    call    print_string

; ── Login Menu ───────────────────────────────────
.login_menu:
    push    firstMenuLogin
    call    print_string

    call    read_char

    cmp     al, '1'
    je      .do_login
    cmp     al, '2'
    je      .do_register
    cmp     al, '3'
    je      .confirmation_to_exit
    
.confirmation_to_exit:
    push confirmationExit
    call print_string
    
    call read_char
    
    cmp al, 'Y'
    je .exit_program
    cmp al, 'y'
    je .exit_program
    cmp al, 'N'
    je .login_menu
    cmp al, 'n'
    je .login_menu

; ── Register ─────────────────────────────────────
.do_register:
    push    promptUserName
    call    print_string
    push    REGNAME
    call    read_input

    push    promptUserPassword
    call    print_string
    push    REGPASSWORD
    call    read_input

    push    promptConfirmPassword
    call    print_string
    push    CONFIRMPASSWORD
    call    read_input

    ; Check passwords match
    push    REGPASSWORD
    push    CONFIRMPASSWORD
    call    compare_strings
    jnz     .password_mismatch

    push    registrationSuccess
    call    print_string
    jmp     .login_menu

.password_mismatch:
    push    error_confirmPassword
    call    print_string
    jmp     .do_register

; ── Login ─────────────────────────────────────────
.do_login:
    ; check login attempts
    mov     al, [LOGIN_COUNT]
    cmp     al, 3
    jge     .login_failed

    push    promptUserLogin
    call    print_string
    push    LOGINNAME
    call    read_input

    push    promptUserLoginPassword
    call    print_string
    push    LOGINPASSWORD
    call    read_input

    ; Compare name
    push    REGNAME
    push    LOGINNAME
    call    compare_strings
    jnz     .login_wrong

    ; Compare password
    push    REGPASSWORD
    push    LOGINPASSWORD
    call    compare_strings
    jnz     .login_wrong

    ; Login success — reset count
    mov     byte [LOGIN_COUNT], 0
    push    successfulLogin
    call    print_string
    jmp     .main_menu

.login_wrong:
    mov     al, [LOGIN_COUNT]
    inc     al
    mov     [LOGIN_COUNT], al
    push    error_invalidLogin
    call    print_string
    jmp     .do_login

.login_failed:
    push    error_fail
    call    print_string
    jmp     .exit_program

; ── Main Food Menu ────────────────────────────────
.main_menu:
    push    menuSelection
    call    print_string

    call    read_char

    cmp     al, '1'
    je      .burger_menu
    cmp     al, '2'
    je      .tender_menu
    cmp     al, '3'
    je      .nasi_menu
    cmp     al, '4'
    je      .dessert_menu
    cmp     al, '5'
    je      .view_cart
    cmp     al, '6'
    je      .exit_program
    jmp     .main_menu

; ── Burger Menu ───────────────────────────────────
.burger_menu:
    push    menuDisplayBurger
    call    print_string
    call    read_char

    cmp     al, '1'
    je      .sel_classic_burger
    cmp     al, '2'
    je      .sel_cheeseburger
    cmp     al, '3'
    je      .sel_bacon_burger
    cmp     al, '4'
    je      .sel_veggie_burger
    cmp     al, '5'
    je      .sel_bikku_makku
    cmp     al, '6'
    je      .main_menu
    jmp     .burger_menu

.sel_classic_burger:
    mov     eax, [priceClassicBurger]
    jmp     .meal_or_alacarte
.sel_cheeseburger:
    mov     eax, [priceCheeseburger]
    jmp     .meal_or_alacarte
.sel_bacon_burger:
    mov     eax, [priceBaconBurger]
    jmp     .meal_or_alacarte
.sel_veggie_burger:
    mov     eax, [priceVeggieBurger]
    jmp     .meal_or_alacarte
.sel_bikku_makku:
    mov     eax, [priceBikkuMakkuBurger]
    jmp     .meal_or_alacarte

; ── Chicken Tenders Menu ──────────────────────────
.tender_menu:
    push    menuDisplayChickenTenders
    call    print_string
    call    read_char

    cmp     al, '1'
    je      .sel_classic_tender
    cmp     al, '2'
    je      .sel_spicy_tender
    cmp     al, '3'
    je      .sel_honey_tender
    cmp     al, '4'
    je      .sel_bbq_tender
    cmp     al, '5'
    je      .main_menu
    jmp     .tender_menu

.sel_classic_tender:
    mov     eax, [priceClassicChickenTenders]
    jmp     .meal_or_alacarte
.sel_spicy_tender:
    mov     eax, [priceSpicyChickenTenders]
    jmp     .meal_or_alacarte
.sel_honey_tender:
    mov     eax, [priceHoneyMustardChickenTenders]
    jmp     .meal_or_alacarte
.sel_bbq_tender:
    mov     eax, [priceBBQChickenTenders]
    jmp     .meal_or_alacarte

; ── Nasi Lemak Menu ───────────────────────────────
.nasi_menu:
    push    menuDisplaySpicyChickenNasiLemak
    call    print_string
    call    read_char

    cmp     al, '1'
    je      .sel_nasi
    cmp     al, '2'
    je      .main_menu
    jmp     .nasi_menu

.sel_nasi:
    mov     eax, [priceSpicyChickenNasiLemak]
    jmp     .meal_or_alacarte

; ── Dessert Menu ──────────────────────────────────
.dessert_menu:
    push    menuDisplayDesserts
    call    print_string
    call    read_char

    cmp     al, '1'
    je      .sel_choc_cake
    cmp     al, '2'
    je      .sel_vanilla
    cmp     al, '3'
    je      .sel_strawberry
    cmp     al, '4'
    je      .main_menu
    jmp     .dessert_menu

.sel_choc_cake:
    mov     eax, [priceChocolateLavaCake]
    jmp     .add_to_cart
.sel_vanilla:
    mov     eax, [priceVanillaIceCreamSundae]
    jmp     .add_to_cart
.sel_strawberry:
    mov     eax, [priceStrawberryCheesecake]
    jmp     .add_to_cart

; ── Meal or Ala Carte ─────────────────────────────
.meal_or_alacarte:
    push    eax                     ; save item price
    push    makeItAMeal
    call    print_string
    call    read_char
    pop     ebx                     ; restore item price to ebx

    cmp     al, '1'
    je      .choose_meal_sides
    cmp     al, '2'
    je      .ala_carte
    cmp     al, '3'
    je      .main_menu
    push    ebx
    jmp     .meal_or_alacarte

.ala_carte:
    mov     eax, ebx
    jmp     .add_to_cart

.choose_meal_sides:
    ; add meal base price
    add     ebx, [makeItAMealPrice]

    push    ifAmeal
    call    print_string
    call    read_char

    cmp     al, '1'
    je      .regular_fries
    cmp     al, '2'
    je      .large_fries
    cmp     al, '3'
    je      .regular_drink
    cmp     al, '4'
    je      .large_drink
    cmp     al, '5'
    je      .main_menu
    jmp     .choose_meal_sides

.regular_fries:
    mov     eax, ebx
    jmp     .add_to_cart
.large_fries:
    add     ebx, [largeFriesPrice]
    mov     eax, ebx
    jmp     .add_to_cart
.regular_drink:
    mov     eax, ebx
    jmp     .add_to_cart
.large_drink:
    add     ebx, [largeSoftDrinkPrice]
    mov     eax, ebx
    jmp     .add_to_cart

; ── Add to Cart ───────────────────────────────────
.add_to_cart:
    add     [cartTotal], eax
    push    ifAlaCarte
    call    print_string
    jmp     .main_menu

; ── View Cart ─────────────────────────────────────
.view_cart:
    mov     eax, [cartTotal]
    cmp     eax, 0
    je      .cart_empty

    ; Show subtotal
    push    priceDisplayItemOnScreen
    call    print_string
    push    dword [cartTotal]
    call    print_cents
    push    taxNote
    call    print_string

    ; Calculate 6% tax: total * 106 / 100
    mov     eax, [cartTotal]
    mov     ebx, 106
    mul     ebx
    mov     ebx, 100
    div     ebx

    ; Show total with tax
    push    checkOutDisplayPrice
    call    print_string
    push    eax
    call    print_cents

    push    checkoutOptions
    call    print_string

    call    read_char
    cmp     al, '1'
    je      .pay_with_card
    cmp     al, '2'
    je      .main_menu
    jmp     .view_cart

.cart_empty:
    push    emptyCartMsg
    call    print_string
    jmp     .main_menu

; ── Pay with Card ─────────────────────────────────
.pay_with_card:
    push    payWithCard
    call    print_string
    push    cardNumber
    call    read_input

    push    expiryPrompt
    call    print_string
    push    expiryDate
    call    read_input

    push    cvvPrompt
    call    print_string
    push    cvv
    call    read_input

    push    payWithCardSuccessful
    call    print_string

    ; Reset cart
    mov     dword [cartTotal], 0

    ; Order again?
    push    orderAgain
    call    print_string
    call    read_char

    cmp     al, '1'
    je      .main_menu
    jmp     .exit_program

; ── Exit ──────────────────────────────────────────
.exit_program:
    push    thankYouMessage
    call    print_string

    push    0
    call    ExitProcess@4