section .data
;welcome message
welcomeMsg:
        db '===============================', 10
        db 'Welcome to Mckudonarudo POS system!', 10
        db '===============================', 10, 0
welcomeLength equ $ - welcomeMsg

;authentication part
firstMenuLogin:
    db '===============================', 10
    db 'Please select an option:', 10
    db '1. Login', 10
    db '2. Register', 10
    db '3. Exit', 10
    db '===============================', 10
    db 'selection: ', 0
firstMenuLoginLength equ $ - firstMenuLogin

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
menuSelectionLength equ $ - menuSelection

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
menuDisplayBurgerLength equ $ - menuDisplayBurger

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
menuDisplayChickenTendersLength equ $ - menuDisplayChickenTenders

menuDisplaySpicyChickenNasiLemak:
    db '===============================', 10
    db 'Spicy Chicken with Nasi Lemak Selection Menu', 10
    db '1. Spicy Chicken with Nasi Lemak - $7.99', 10
    db '2. Back to Main Menu', 10
    db '===============================', 10
    db 'selection: ', 0
menuDisplaySpicyChickenNasiLemakLength equ $ - menuDisplaySpicyChickenNasiLemak

menuDisplayDesserts:
    db '===============================', 10
    db 'Desserts Selection Menu', 10
    db '1. Chocolate Lava Cake         - $4.99', 10
    db '2. Vanilla Ice Cream Sundae    - $3.99', 10
    db '3. Strawberry Cheesecake       - $5.49', 10
    db '4. Back to Main Menu', 10
    db '===============================', 10
    db 'selection: ', 0
menuDisplayDessertsLength equ $ - menuDisplayDesserts

emptyCartMsg:
    db '===============================', 10
    db 'Your cart is empty! Please order something first.', 10
    db '===============================', 10, 0
emptyCartMsgLength equ $ - emptyCartMsg

itemAddedIndication:
    db '==================', 10
    db 'Item added to cart!', 10
    db '==================', 10, 0
itemAddedIndicationLength equ $ - itemAddedIndication

viewCartMsg:
    db 'Your cart:', 10
    db '1. Checkout', 10
    db '2. Back to Main Menu', 10
    db '===============================', 10
    db 'selection: ', 0
viewCartMsgLength equ $ - viewCartMsg

finalHeader db '===============================', 10
    finalHeaderLength equ $ - finalHeader

finalTotalLabel db 'Your final total (include 6% tax): $', 0
    finalTotalLabelLength equ $ - finalTotalLabel

finalFooter db 10, '===============================', 10
    finalFooterLength equ $ - finalFooter

checkoutOptions:
    db 10
    db '1. Pay with Card', 10
    db '2. Pay with Cash', 10
    db '3. Back to Cart', 10
    db '4. Cancel Payment', 10
    db '===============================', 10
    db 'selection: ', 0
checkoutOptionsLength equ $ - checkoutOptions

payWithCard:
    db '===============================', 10
    db 'Enter your card details to complete the payment.', 10
    db 'Card Number: ', 0
payWithCardLength equ $ - payWithCard

expiryPrompt:
    db 'Expiration Date (MM/YY): ', 0
expiryPromptLength equ $ - expiryPrompt

cvvPrompt:
    db 'CVV: ', 0
cvvPromptLength equ $ - cvvPrompt

payWithCardFailed:
    db '===============================', 10
    db 'Payment failed! Please try again.', 10
    db '===============================', 10, 0
payWithCardFailedLength equ $ - payWithCardFailed

payWithCardSuccessful:
    db '===============================', 10
    db 'Payment successful! Thank you for your order!', 10
    db '===============================', 10, 0
payWithCardSuccessfulLength equ $ - payWithCardSuccessful

orderAgain:
    db '===============================', 10
    db 'Would you like to order again?', 10
    db '1. Yes', 10
    db '2. No', 10
    db '===============================', 10
    db 'selection: ', 0
orderAgainLength equ $ - orderAgain

confirmCancel:
    db '====================================', 10
    db ' ARE YOU SURE YOU WANT TO CANCEL?   ', 10
    db ' Your cart will be cleared.         ', 10
    db ' 1. Yes, Cancel and Clear Cart      ', 10
    db ' 2. No, Go Back to Checkout         ', 10
    db '====================================', 10
    db 'selection: ', 0
confirmCancelLength equ $ - confirmCancel

cancelSuccess:
    db '====================================', 10
    db ' Payment cancelled. Cart cleared.   ', 10
    db '====================================', 10, 0
cancelSuccessLength equ $ - cancelSuccess

payAtCounterMsg:
    db '================================================', 10
    db ' THANK YOU FOR ORDERING!                        ', 10
    db ' Your order has been sent to the kitchen.       ', 10
    db ' PLEASE PROCEED TO THE COUNTER TO PAY.          ', 10
    db '================================================', 10, 0
payAtCounterMsgLen equ $ - payAtCounterMsg

orderAgainUI:
    db '====================================', 10
    db 'WOULD YOU LIKE TO ORDER AGAIN?', 10
    db '1. Yes, I want more food!     ', 10
    db '2. No, I am done.             ', 10
    db '====================================', 10
    db 'selection: ', 0
orderAgainUILen equ $ - orderAgainUI

finalExitMsg:
    db '====================================', 10
    db '   THANK YOU FOR VISITING US!       ', 10
    db '      HAVE A GREAT DAY!             ', 10
    db '====================================', 10, 0
finalExitMsgLen equ $ - finalExitMsg

makeItAMeal:
    db '===============================', 10
    db 'Make it a meal or ala carte?', 10
    db '1. Make it a meal', 10
    db '2. Ala Carte', 10
    db '3. Back to Menu', 10
    db '===============================', 10
    db 'selection: ', 0
makeItAMealLength equ $ - makeItAMeal

receiptHeader db 10, '======= YOUR RECEIPT =======', 10, 0
receiptHeaderLength equ $ - receiptHeader

ifAmeal:
    db '===============================', 10
    db 'Choose your side and drink:', 10
    db '1. Regular French Fries', 10
    db '2. Large French Fries      (add $2.00)', 10
    db '3. Regular Soft Drink', 10
    db '4. Large Soft Drink        (add $1.50)', 10
    db '5. Back to Main Menu', 10
    db '===============================', 10
    db 'selection: ', 0
ifAmealLength equ $ - ifAmeal



;clearing screen purporses
clearScreen db 27, '[2J', 27, '[H'
clearScreenLength equ $ - clearScreen


promptUserName        db 'Please enter your name: ', 0
promptUserNameLength equ $ - promptUserName
promptUserPassword    db 'Please enter your password: ', 0
promptUserPasswordLength equ $ - promptUserPassword
promptConfirmPassword db 'Please confirm your password: ', 0
promptConfirmPasswordLength equ $ - promptConfirmPassword
promptUserLogin       db 'Please enter your name to login: ', 0
promptUserLoginLength equ $ - promptUserLogin
promptUserLoginPassword db 'Please enter your password to login: ', 0
promptUserLoginPasswordLength equ $ - promptUserLoginPassword


priceDisplayItemOnScreen:
    db '===============================', 10
    db 'Your current total is: $', 0
priceDisplayItemOnScreenLength equ $ - priceDisplayItemOnScreen

priceFooter:
        db 10, '===============================', 10
priceFooterLength equ $ - priceFooter


;checking validation part only and successful registration
exitConfirmationMsg:
        db 'Are you sure you want to exit? (Y/N): ', 0
exitConfirmationMsgLength equ $ - exitConfirmationMsg

error_confirmPassword:
        db 'Password does not match. Please try again.', 10, 0
error_confirmPasswordLength equ $ - error_confirmPassword

registrationSuccessMsg:
        db 'Registration successful! You can now login.', 10, 0
registrationSuccessMsgLength equ $ - registrationSuccessMsg

successfulLogin:
        db 'Login successful! Welcome to Mckudonarudo POS system!', 10, 0
successfulLoginLength equ $ - successfulLogin

error_invalidLogin:
        db 'Invalid username or password. Please try again.', 10, 0
error_invalidLoginLength equ $ - error_invalidLogin


;LISTED ITEM 
nameClassic db ' - Classic Burger', 10
nameClassicLength equ $ - nameClassic

nameCheese  db ' - Cheeseburger', 10
nameCheeseLength equ $ - nameCheese

nameBacon   db ' - Bacon Burger', 10
nameBaconLength equ $ - nameBacon

nameVeggie db ' - Veggie Burger', 10
nameVeggieLength equ $ - nameVeggie

nameBikkuMakku db ' - Bikku Makku Burger', 10
nameBikkuLength equ $ - nameBikkuMakku

;chicken tender
nameClassicTenders       db ' - Classic Chicken Tenders', 10
nameClassicTendersLength equ $ - nameClassicTenders

nameSpicyTenders         db ' - Spicy Chicken Tenders', 10
nameSpicyTendersLength   equ $ - nameSpicyTenders

nameHoneyTenders         db ' - Honey Mustard Tenders', 10
nameHoneyTendersLength   equ $ - nameHoneyTenders

nameBBQTenders           db ' - BBQ Chicken Tenders', 10
nameBBQTendersLength     equ $ - nameBBQTenders

;nasi lemak
nameSpicyNasiLemak       db ' - Spicy Chicken Nasi Lemak', 10
nameSpicyNasiLemakLength    equ $ - nameSpicyNasiLemak

;desserts
nameLavaCake             db ' - Chocolate Lava Cake', 10
nameLavaCakeLength          equ $ - nameLavaCake

nameSundaeCake           db ' - Vanilla Ice Cream Sundae', 10
nameSundaeCakeLength     equ $ - nameSundaeCake

nameCheeseCaked          db ' - Strawberry Cheesecake', 10
nameCheeseCakedLength    equ $ - nameCheeseCaked

;ITEM PRICE
; Burgers
priceClassicBurger          dd 599
priceCheeseburger           dd 699
priceBaconBurger            dd 799
priceVeggieBurger           dd 649
priceBikkuMakkuBurger       dd 899

;ChickenTender
priceClassicChickenTenders         dd 499
priceSpicyChickenTenders           dd 549
priceHoneyMustardChickenTenders    dd 599
priceBBQChickenTenders             dd 599

;nasi lemak
priceSpicyChickenNS     dd 799

;dessert
priceChocolateLavaCake dd 499
priceVanillaIceCreamSundae dd 399
priceStrawberryCheesecake dd 549

;make it a meal
priceMakeItAMeal dd 500

;price for make it a meal options food
priceRegularFrenchFries dd 0
priceLargeFries dd 200
priceRegularSoftDrinks dd 0
priceLargeSoftDrinks dd 150

;handling the cart price
totalPrice dd 0 ;a 4 byte variable initialized to 0

section .bss
choiceOption resb 2
registerName resb 32
registerPassword resb 32
loginName resb 32
loginPassword resb 32
confirmPassword resb 32
cardNumber resb 20
expiryDate resb 8
cvvCode    resb 5

;to list the item that user ordered
cartItems resb 30 ;space to store 20 items
cartCount resd 1 ;keep track

;work as a paper to store the content used to hold the character once the calculation done
calculationBuffer resb 10

section .text
    global _start

_start:
jmp _mainPage

_readUserInput:
    mov eax, 3
    mov ebx, 0
    mov ecx, choiceOption
    mov edx, 2
    int 0x80
    ret     ;return to where "call" was used

_clearScreen:
    mov eax, 4
    mov ebx, 1
    mov ecx, clearScreen
    mov edx, clearScreenLength
    int 0x80
    ret

_showAddedMessage:
    mov eax, 4
    mov ebx, 1
    mov ecx, itemAddedIndication
    mov edx, itemAddedIndicationLength
    int 0x80
    ret         

_mainPage:
    ;display the main page/login
    mov eax, 4
    mov ebx, 1
    mov ecx, welcomeMsg
    mov edx, welcomeLength
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, firstMenuLogin
    mov edx, firstMenuLoginLength
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, choiceOption
    mov edx, 2
    int 0x80

    mov al, [choiceOption]
    cmp al, '1'
    je _loginPage
    cmp al, '2'
    je _registerPage
    cmp al, '3' 
    je _exit_Confirmation

    jmp _mainPage ;if the user input is invalid, it will loop back to the main page

_loginPage:
    ;code for login page
    mov eax, 4
    mov ebx, 1
    mov ecx, promptUserLogin
    mov edx, promptUserLoginLength
    int 0x80
    
    mov eax,3
    mov ebx, 0
    mov ecx, loginName
    mov edx, 32
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, promptUserLoginPassword
    mov edx, promptUserLoginPasswordLength
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, loginPassword
    mov edx, 32
    int 0x80

    mov esi, loginName
    mov edi, registerName

_loop_for_name:
    mov al, [esi]
    mov bl, [edi]

    cmp al, bl
    jne _invalidLogin
    cmp al, 10 ;if it success it will proceed to check with the password
    je _loop_for_password
    inc esi
    inc edi

    jmp _loop_for_name

_loop_for_password:
    mov esi, registerPassword
    mov edi, confirmPassword

_loop_for_passwordv2:
    mov al, [esi]
    mov bl, [edi]

    cmp al, bl
    jne _invalidLogin

    cmp al, 10
    je _successfulLogin
    inc esi
    inc edi

    jmp _loop_for_passwordv2

_successfulLogin:
    ;if match prompt successful login -->
    mov eax, 4
    mov ebx, 1
    mov ecx, successfulLogin
    mov edx, successfulLoginLength
    int 0x80

    jmp _firstMenu

_invalidLogin:
    ;if mismatch prompt the output -->
    mov eax, 4 
    mov ebx, 1
    mov ecx, error_invalidLogin
    mov edx, error_invalidLoginLength
    int 0x80

    jmp _mainPage

_registerPage:
    ;code for registration page
    mov eax, 4
    mov ebx, 1
    mov ecx, promptUserName
    mov edx, promptUserNameLength
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, registerName
    mov edx, 32
    int 0x80
    ;user type their first password entering confirm password
    mov eax, 4
    mov ebx, 1
    mov ecx, promptUserPassword
    mov edx, promptUserPasswordLength
    int 0x80
    
    mov eax, 3
    mov ebx, 0
    mov ecx, registerPassword
    mov edx, 32
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, promptConfirmPassword
    mov edx, promptConfirmPasswordLength
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, confirmPassword
    mov edx, 32
    int 0x80

    ;this mainly use for the loop
    mov esi, registerPassword
    mov edi, confirmPassword
    
    ;use loop to compare the credential
_loop_compare:
    mov al, [esi]
    mov bl, [edi]

    cmp al, bl
    jne _registerInvalidPage ;if dont match then failed 

    cmp al, 10
    je _registrationSuccess
    cmp al, 0
    ;if it's equal it will jump into succes, success jump back into main menu
    je _registrationSuccess

    inc esi
    inc edi

    jmp _loop_compare

_registrationSuccess:
    ;if match prompt successful registration -->
    mov eax, 4
    mov ebx, 1
    mov ecx, registrationSuccessMsg
    mov edx, registrationSuccessMsgLength
    int 0x80

    jmp _mainPage

_registerInvalidPage:
    ;if mismatch prompt the output -->
    mov eax, 4
    mov ebx, 1
    mov ecx, error_confirmPassword
    mov edx, error_confirmPasswordLength
    int 0x80

    mov byte [registerPassword], 0 ;clear the password SO it does not stored
    
    jmp _mainPage

_firstMenu:
    ;this is where the user get to choose what type of food they want to order
    mov eax, 4
    mov ebx, 1
    mov ecx, menuSelection
    mov edx, menuSelectionLength
    int 0x80

    ;code to read the user input for menu selection -->
    mov eax, 3
    mov ebx, 0
    mov ecx, choiceOption
    mov edx, 2
    int 0x80

    mov al, [choiceOption]
    cmp al, '1'
    je _menuDisplayBurger
    cmp al, '2'
    je _menuDisplayChickenTenders
    cmp al, '3'
    je _menuDisplaySpicyChickenNasiLemak
    cmp al, '4'
    je _menuDisplayDesserts
    cmp al, '5'
    je _viewCartCheckout
    cmp al, '6'
    je _exit_Confirmation

    jmp _mainPage


_menuDisplayBurger:
    mov eax, 4
    mov ebx, 1
    mov ecx, menuDisplayBurger
    mov edx, menuDisplayBurgerLength
    int 0x80

    ;this part of the code section allow the code to read the new input for the specific burger, if not it will causes bug of looping.
    call _readUserInput ;use this function to handle the user choice this make code really clean cause it will be repetitive

    ;user choice
    mov al, [choiceOption]
    cmp al, '1'
    je _addClassicBurgerToCart
    cmp al, '2'
    je _addCheeseburgerToCart
    cmp al, '3'
    je _addBaconBurgerToCart
    cmp al, '4'
    je _addVeggieBurgerToCart
    cmp al, '5'
    je _addBikkuMakkuBurgerToCart
    cmp al, '6'
    je _firstMenu

    jmp _menuDisplayBurger

    _addClassicBurgerToCart:
        ;code to add the burger to the cart
        mov eax, [priceClassicBurger] ;load the price
        add [totalPrice], eax ;move the price into the initalize 0 variable to store the price to keep track the totalCart price
        mov ebx, [cartCount]    ;get the current number of items
        mov byte [cartItems + ebx], 1 ;store '1'
        inc dword [cartCount] ;increment the count for the next item
        jmp _jumpIntoAlaCartePage

    _addCheeseburgerToCart:
        ;code to add the burger to the cart
        mov eax, [priceCheeseburger]
        add [totalPrice], eax
        mov ebx, [cartCount]    ;get the current number of items
        mov byte [cartItems + ebx], 2 ;store '2'
        inc dword [cartCount] ;increment the count for the next item
        jmp _jumpIntoAlaCartePage

    _addBaconBurgerToCart:
        ;code to add the burger to the cart
        mov eax, [priceBaconBurger]
        add [totalPrice], eax
        mov ebx, [cartCount]    ;get the current number of items
        mov byte [cartItems + ebx], 3 ;store '3'
        inc dword [cartCount] ;increment the count for the next item
        jmp _jumpIntoAlaCartePage

    _addVeggieBurgerToCart:
        ;code to add the burger to the cart
        mov eax, [priceVeggieBurger]
        add [totalPrice], eax
        mov ebx, [cartCount]    ;get the current number of items
        mov byte [cartItems + ebx], 4 ;store '4'
        inc dword [cartCount] ;increment the count for the next item
        jmp _jumpIntoAlaCartePage

    _addBikkuMakkuBurgerToCart:
        ;code to add the burger to the cart
        mov eax, [priceBikkuMakkuBurger]
        add [totalPrice], eax
        mov ebx, [cartCount]    ;get the current number of items
        mov byte [cartItems + ebx], 5 ;store '5'
        inc dword [cartCount] ;increment the count for the next item
        jmp _jumpIntoAlaCartePage

_menuDisplayChickenTenders:
    mov eax, 4
    mov ebx, 1
    mov ecx, menuDisplayChickenTenders
    mov edx, menuDisplayChickenTendersLength
    int 0x80

    call _readUserInput

    ;user choice
    mov al, [choiceOption]
    cmp al, '1'
    je _addClassiscChickenTendersToCart
    cmp al, '2'
    je _addSpicyChickenTendersToCart
    cmp al, '3'
    je _addHoneyMustardChickenTendersToCart
    cmp al, '4'
    je _addBBQChickenTendersToCart
    cmp al, '5'
    je _firstMenu

    jmp _menuDisplayChickenTenders ;jumps back up if user mis-input or gibberish

    _addClassiscChickenTendersToCart:
    mov eax, [priceClassicChickenTenders]
    add [totalPrice], eax
    mov ebx, [cartCount]   
    mov byte [cartItems + ebx], 6
    inc dword [cartCount]
    jmp _jumpIntoAlaCartePage

    _addSpicyChickenTendersToCart:
    mov eax, [priceSpicyChickenTenders]
    add [totalPrice], eax
    mov ebx, [cartCount]   
    mov byte [cartItems + ebx], 7
    inc dword [cartCount]
    jmp _jumpIntoAlaCartePage

    _addHoneyMustardChickenTendersToCart:
    mov eax, [priceHoneyMustardChickenTenders]
    add [totalPrice], eax
    mov ebx, [cartCount]   
    mov byte [cartItems + ebx], 8
    inc dword [cartCount]
    jmp _jumpIntoAlaCartePage

    _addBBQChickenTendersToCart:
    mov eax, [priceBBQChickenTenders]
    add [totalPrice], eax
    mov ebx, [cartCount]   
    mov byte [cartItems + ebx], 9
    inc dword [cartCount]
    jmp _jumpIntoAlaCartePage

_menuDisplaySpicyChickenNasiLemak:
    ;code to display the spicy chicken with nasi lemak menu and add to cart
    mov eax, 4
    mov ebx, 1
    mov ecx, menuDisplaySpicyChickenNasiLemak
    mov edx, menuDisplaySpicyChickenNasiLemakLength
    int 0x80

    call _readUserInput

    mov al, [choiceOption]
    cmp al, '1'
    je _addSpicyChickenNStoCart
    cmp al, '2'
    je _firstMenu

    jmp _menuDisplaySpicyChickenNasiLemak

    _addSpicyChickenNStoCart:
    mov eax, [priceSpicyChickenNS]
    add [totalPrice], eax
    mov ebx, [cartCount]   
    mov byte [cartItems + ebx], 10
    inc dword [cartCount]
    jmp _jumpIntoAlaCartePage


_menuDisplayDesserts:
    ;code to display the desserts menu and add to cart
    mov eax, 4
    mov ebx, 1
    mov ecx, menuDisplayDesserts
    mov edx, menuDisplayDessertsLength
    int 0x80

    call _readUserInput

    mov al, [choiceOption]
    cmp al, '1'
    je _addChocolateLavaCakeToCart
    cmp al, '2'
    je _addVanillaIceCreamSundaeToCart
    cmp al, '3'
    je _addStrawberryCheesecakeToCart
    cmp al, '4'
    je _firstMenu

    jmp _menuDisplayDesserts

    _addChocolateLavaCakeToCart:
    mov eax, [priceChocolateLavaCake]
    add [totalPrice], eax
    mov ebx, [cartCount]   
    mov byte [cartItems + ebx], 11
    inc dword [cartCount]
    call _showAddedMessage
    jmp _menuDisplayDesserts

    _addVanillaIceCreamSundaeToCart:
    mov eax, [priceVanillaIceCreamSundae]
    add [totalPrice], eax
    mov ebx, [cartCount]   
    mov byte [cartItems + ebx], 12
    inc dword [cartCount]
    call _showAddedMessage
    jmp _menuDisplayDesserts

    _addStrawberryCheesecakeToCart:
    mov eax, [priceStrawberryCheesecake]
    add [totalPrice], eax
    mov ebx, [cartCount]   
    mov byte [cartItems + ebx], 13
    inc dword [cartCount]
    call _showAddedMessage
    jmp _menuDisplayDesserts   

_viewCartCheckout:
    ;code to display the cart and checkout
    ;check if the cart have item or not
    mov eax, [cartCount]
    cmp eax, 0
    je _cartIsEmpty

    call _clearScreen

    mov eax, 4
    mov ebx, 1
    mov ecx, receiptHeader
    mov edx, receiptHeaderLength
    int 0x80

    mov esi, 0  ;esi will be the index so start at 0

_printItemsLoop:
    push esi    ;save the index

    movzx eax, byte[cartItems + esi]
    cmp eax, 1
    je _nameClassic
    cmp eax, 2
    je _nameCheese
    cmp eax, 3
    je _nameBacon
    cmp eax, 4
    je _nameVeggie
    cmp eax, 5
    je _nameBikkuMakku
    cmp eax, 6
    je _nameClassicTenders
    cmp eax, 7
    je _nameSpicyTenders
    cmp eax, 8
    je _nameHoneyTenders
    cmp eax, 9
    je _nameBBQTenders
    cmp eax, 10
    je _nameNasiLemak
    cmp eax, 11
    je _nameLavaCake
    cmp eax, 12
    je _nameSundae
    cmp eax, 13
    je _nameCheesecake

_afterPrintName:
    pop esi ;restoure our index
    inc esi ;move to the next item
    cmp esi, [cartCount] ;did we reach the total count?
    jl _printItemsLoop ;if index < cartCount, keep looping

    mov eax, 4
    mov ebx, 1
    mov ecx, priceDisplayItemOnScreen
    mov edx, priceDisplayItemOnScreenLength
    int 0x80

    mov eax, [totalPrice]
    call _useForCalculatingPrice ;this will calculate the price

    mov eax, 4
    mov ebx, 1
    mov ecx, priceFooter
    mov edx, priceFooterLength
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, viewCartMsg
    mov edx, viewCartMsgLength
    int 0x80

    call _readUserInput
    mov al, [choiceOption]
    cmp al, '1'
    je _checkOutProcess
    cmp al, '2'
    je _firstMenu

    jmp _firstMenu

_nameClassic:
    mov ecx, nameClassic
    mov edx, nameClassicLength
    jmp _helperWriter

_nameCheese:
    mov ecx, nameCheese
    mov edx, nameCheeseLength
    jmp _helperWriter

_nameBacon:
    mov ecx, nameBacon
    mov edx, nameBaconLength
    jmp _helperWriter

_nameVeggie:
    mov ecx, nameVeggie
    mov edx, nameVeggieLength
    jmp  _helperWriter
    
_nameBikkuMakku:
    mov ecx, nameBikkuMakku
    mov edx, nameBikkuLength
    jmp  _helperWriter

_nameClassicTenders:
    mov ecx, nameClassicTenders 
    mov edx, nameClassicTendersLength
    jmp _helperWriter

_nameSpicyTenders:
    mov ecx, nameSpicyTenders
    mov edx, nameSpicyTendersLength
    jmp _helperWriter

_nameHoneyTenders:
    mov ecx, nameHoneyTenders
    mov edx, nameHoneyTendersLength
    jmp _helperWriter

_nameBBQTenders:
    mov ecx, nameBBQTenders
    mov edx, nameBBQTendersLength
    jmp _helperWriter

_nameNasiLemak:
    mov ecx, nameSpicyNasiLemak   
    mov edx, nameSpicyNasiLemakLength
    jmp _helperWriter

_nameLavaCake:
    mov ecx, nameLavaCake
    mov edx, nameLavaCakeLength
    jmp _helperWriter

_nameSundae:
    mov ecx, nameSundaeCake
    mov edx, nameSundaeCakeLength
    jmp _helperWriter

_nameCheesecake:
    mov ecx, nameCheeseCaked
    mov edx, nameCheeseCakedLength
    jmp _helperWriter

_helperWriter:
    mov eax, 4
    mov ebx, 1
    int 0x80
    jmp _afterPrintName

_useForCalculatingPrice:
    mov edi, calculationBuffer ;Edi now will store the calculationBuffer
    add edi, 9 ;move to the end of the buffer (declared is the 10)
    mov byte [edi], 0 ;null terminator (for safety)
    dec edi

    mov ebx, 10 ;now we will divide it with 10 so 499 become 4.99
    mov ecx, 0  ;use ecx as a counter to track digits

_conversionLoop:
    mov edx, 0  ;clear remainder
    div ebx     ;eax divided 10 and the quotient will store in eax remainder in edx
    add dl, '0' ;convert the remainder (0-9) into ascii
    mov [edi], dl ;store inside buffer
    dec edi ;move buffer backwards
    inc ecx ;increment digit number

    cmp ecx, 2  ;check is it processed 2 digits (cents)
    jne _checkFinished ;if no then skip
    mov byte [edi], '.' ;if yes then put a dot on the middle
    dec edi ;move pointer for the next digit

_checkFinished:
    cmp eax, 0
    jne _conversionLoop

    inc edi    

    ;print the output
    mov ecx, edi ;store into ecx
    mov edx, calculationBuffer
    add edx, 9
    sub edx, edi ;calculate length (end - start)

    mov eax, 4
    mov ebx, 1
    int 0x80
    ret

_cartIsEmpty:
;if the cart is empty, it will prompt the user that the cart is empty and loop back to the main menu
    mov eax, 4
    mov ebx, 1
    mov ecx, emptyCartMsg
    mov edx, emptyCartMsgLength
    int 0x80

    jmp _firstMenu

_jumpIntoAlaCartePage:
    mov eax, 4
    mov ebx, 1
    mov ecx, makeItAMeal
    mov edx, makeItAMealLength
    int 0x80

    call _readUserInput

    mov al, [choiceOption]
    cmp al, '1'
    je _ifAmeal
    cmp al, '2'
    je _outputAlaCarte
    cmp al, '3'
    je _firstMenu
    

    jmp _firstMenu

_outputAlaCarte:
    jmp _firstMenu

_ifAmeal:
    mov eax, 4
    mov ebx, 1
    mov ecx, ifAmeal
    mov edx, ifAmealLength
    int 0x80

    call _readUserInput

    mov al, [choiceOption]
    cmp al, '1'
    je _addRegularFrenchFries
    cmp al, '2'
    je _addLargeFrenchFries
    cmp al, '3'
    je _addRegularSoftDrinks
    cmp al, '4'
    je _addLargeSoftDrinks
    cmp al, '5'
    je _firstMenu

     _addRegularFrenchFries:
    mov eax, [priceRegularFrenchFries]
    add [totalPrice], eax
    call _showAddedMessage
    jmp _ifAmeal

    _addLargeFrenchFries:
    mov eax, [priceLargeFries]
    add [totalPrice], eax
    call _showAddedMessage
    jmp _ifAmeal

    _addRegularSoftDrinks:
    mov eax, [priceRegularSoftDrinks]
    add [totalPrice], eax
    call _showAddedMessage
    jmp _ifAmeal

    _addLargeSoftDrinks:
    mov eax, [priceLargeSoftDrinks]
    add [totalPrice], eax
    call _showAddedMessage
    jmp _ifAmeal

_checkOutProcess:
    ;for checking out

    mov eax, 4
    mov ebx, 1
    mov ecx, finalHeader
    mov edx, finalHeaderLength
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, finalTotalLabel
    mov edx, finalTotalLabelLength
    int 0x80

    mov eax, [totalPrice]
    call _useForCalculatingPrice

    mov eax, 4
    mov ebx, 1
    mov ecx, finalFooter
    mov edx, finalFooterLength
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, checkoutOptions
    mov edx, checkoutOptionsLength
    int 0x80

    call _readUserInput
    mov al, [choiceOption]
    cmp al, '1'
    je _payWithCard
    cmp al, '2'
    je _outputPayWithCash
    cmp al, '3'
    je _firstMenu
    cmp al, '4'
    je _validationCancel

    jmp _checkOutProcess

_payWithCard:

    mov eax, 4
    mov ebx, 1
    mov ecx, payWithCard
    mov edx, payWithCardLength
    int 0x80

    call _readUserInput 

    mov eax, 4
    mov ebx, 1
    mov ecx, expiryPrompt
    mov edx, expiryPromptLength
    int 0x80

    call _readUserInput

    mov eax, 4
    mov ebx, 1
    mov ecx, cvvPrompt
    mov edx, cvvPromptLength
    int 0x80

    call _readUserInput

    jmp _paymentSuccess

_paymentSuccess:
    mov eax, 4
    mov ebx, 1
    mov ecx, payWithCardSuccessful
    mov edx, payWithCardSuccessfulLength
    int 0x80

    ;reset the cart so they can order fresh next time
    mov dword [totalPrice], 0
    mov dword [cartCount], 0
    
    jmp _orderAgainMenu   

_paymentFailed:
    mov eax, 4
    mov ebx, 1
    mov ecx, payWithCardFailed
    mov edx, payWithCardFailedLength
    int 0x80
    jmp _payWithCard

_outputPayWithCash:
    mov eax, 4
    mov ebx, 1
    mov ecx, payAtCounterMsg
    mov edx, payAtCounterMsgLen
    int 0x80

    mov dword [totalPrice], 0
    mov dword [cartCount], 0

    jmp _orderAgainMenu

_validationCancel:
    mov eax, 4
    mov ebx, 1
    mov ecx, confirmCancel
    mov edx, confirmCancelLength
    int 0x80

    call _readUserInput
    mov al, [choiceOption]
    cmp al, '1'
    je _doCancelPayment    
    cmp al, '2'
    je _checkOutProcess    
    ;if they typed something else, just show this validation again
    jmp _validationCancel

_doCancelPayment:
    mov dword [totalPrice], 0
    mov dword [cartCount], 0

    mov eax, 4
    mov ebx, 1
    mov ecx, cancelSuccess
    mov edx, cancelSuccessLength
    int 0x80

    jmp _exitProgram

_orderAgainMenu:
    mov eax, 4
    mov ebx, 1
    mov ecx, orderAgainUI
    mov edx, orderAgainUILen
    int 0x80

    call _readUserInput
    mov al, [choiceOption]

    cmp al, '1'
    je _firstMenu         

    cmp al, '2'
    je _exitProgram        

    jmp _orderAgainMenu

_exit_Confirmation:
    ;a validation if the user really wants to exit

    mov eax, 4
    mov ebx, 1
    mov ecx, exitConfirmationMsg
    mov edx, exitConfirmationMsgLength
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, choiceOption
    mov edx, 2
    int 0x80
    
    mov al, [choiceOption]
    cmp al, 'Y'
    je _exitProgram
    cmp al, 'y'
    je _exitProgram
    cmp al, 'N'
    je _mainPage
    cmp al, 'n'
    je _mainPage

_exitProgram:
    mov eax, 4
    mov ebx, 1
    mov ecx, finalExitMsg
    mov edx, finalExitMsgLen
    int 0x80

    mov eax, 1          ; sys_exit
    xor ebx, ebx        ; return 0 
    int 0x80
