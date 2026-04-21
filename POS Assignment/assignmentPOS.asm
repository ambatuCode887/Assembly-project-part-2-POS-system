section .data
;welcome message
welcomeMsg:
        db '===============================', 10
        db 'Welcome to Mckudonarudo POS system!', 10
        db '===============================', 10, 0
welcomeLength equ $ - welcomeMsg

error_emptyInput db 'Error: Input cannot be empty!', 10
error_emptyInputLength equ $ - error_emptyInput

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
    db '6. Remove Item From Cart', 10
    db '7. Exit', 10
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

finalTotalLabel db 'Your final total: $', 0
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

_regNameErrorMsg:
    db '====================================', 10
    db '  INVALID NAME! LETTERS ONLY (3-31) ', 10
    db '====================================', 10, 0
_regNameErrorLen equ $ - _regNameErrorMsg

_regPassErrorMsg:
    db '====================================', 10
    db '  ERROR: PASSWORD TOO SHORT (MIN 4) ', 10
    db '====================================', 10, 0
_regPassErrorLen equ $ - _regPassErrorMsg

_regMatchErrorMsg:
    db '====================================', 10
    db '  ERROR: PASSWORDS DO NOT MATCH!    ', 10
    db '====================================', 10, 0
_regMatchErrorLen equ $ - _regMatchErrorMsg

errorChoose db 10, "========================================", 10, \
                   "  INVALID CHOICE! Please enter 1 or 2.  ", 10, \
                   "========================================", 10, 0
errorChooseLength equ $ - errorChoose

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

removeError db '====================================', 10
                db '  ERROR: INVALID ITEM NUMBER!       ', 10
                db '====================================', 10, 0
removeErrorLength equ $ - removeError

removeSuccessMsg:
        db '====================================', 10
        db '   ITEM REMOVED SUCCESSFULLY!       ', 10
        db '   YOUR CART HAS BEEN UPDATED       ', 10
        db '====================================', 10, 0
removeSuccessMsgLength equ $ - removeSuccessMsg

diningPrompt     db '====================================', 10
                 db '      DINING OPTION:                ', 10
                 db '      1. Dine-In                    ', 10
                 db '      2. Take-Away                  ', 10
                 db '====================================', 10
                 db 'Selection: ', 0
diningPromptLength equ $ - diningPrompt

msgDineIn   db "Dine-In", 0
msgTakeAway db "Take-Away", 0

receiptDineIn    db ' Dining Option: Dine-In', 10, 0
receiptDineInLength equ $ - receiptDineIn
    
receiptTakeAway  db ' Dining Option: Take-Away', 10, 0
receiptTakeAwayLength equ $ - receiptTakeAway



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

removePrompt    db 10, 'Enter the item number to remove: ', 0
removePromptLength equ $ - removePrompt
    
removeErr       db 10, 'INVALID ITEM NUMBER!', 10, 0
removeErrLength    equ $ - removeErr

removeItemMsg   db 10, 'ITEM REMOVED SUCCESSFULLY.', 10, 0
removeItemMsgLength equ $ - removeItemMsg

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
cardBuffer resb 32
expiryBuffer resb 32
cvvBuffer    resb 32
junkBuffer  resb 1
diningChoice resb 2

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
    mov edi, loginPassword

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

    jmp _chooseDining

_invalidLogin:
    ;if mismatch prompt the output -->
    mov eax, 4 
    mov ebx, 1
    mov ecx, error_invalidLogin
    mov edx, error_invalidLoginLength
    int 0x80

    jmp _mainPage

_registerPage:
    mov eax, 4 ;this is my first limitation, it only allow ONE registered member if i had 2 registered member then it will overwrite the first member and only allow the second member to login.
    mov ebx, 1
    mov ecx, promptUserName
    mov edx, promptUserNameLength
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, registerName
    mov edx, 32 
    int 0x80

    mov esi, registerName
    call validate_alpha     
    cmp eax, 0
    je _registerNameError

    jmp _inputPassword           

_inputPassword:
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

    mov esi, registerPassword
    xor ecx, ecx

_checkPassLoop:
    mov al, [esi + ecx]
    cmp al, 10              ;checking if the user is just press enter
    je _verifyPassLength
    inc ecx
    cmp ecx, 32             ;safety break
    jg _registerPassError
    jmp _checkPassLoop

_verifyPassLength:
    cmp ecx, 4             ;make sure it had to be equal or more than 4
    jb _registerPassError   ;if not then prompt error

    ;confirmation page
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

    ;compare both password
    mov esi, registerPassword
    mov edi, confirmPassword
    jmp _loop_compare
    
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

_registerNameError:
    mov eax, 4
    mov ebx, 1
    mov ecx, _regNameErrorMsg
    mov edx, _regNameErrorLen
    int 0x80
    jmp _do_flush_and_restart

_registerPassError:
    mov eax, 4
    mov ebx, 1
    mov ecx, _regPassErrorMsg
    mov edx, _regPassErrorLen
    int 0x80
    jmp _do_flush_and_restart

_registerMatchError:
    mov eax, 4
    mov ebx, 1
    mov ecx, _regMatchErrorMsg
    mov edx, _regMatchErrorLen
    int 0x80
    jmp _do_flush_and_restart

_do_flush_and_restart:
    ;this "eats" the extra characters that cause the Segfault/Loops
    mov eax, 3
    mov ebx, 0
    mov ecx, junkBuffer     ;'junkBuffer resb 1' in .bss
    mov edx, 1
    int 0x80
    cmp byte [junkBuffer], 10
    jne _do_flush_and_restart
    jmp _registerPage

_registrationSuccess:
    ;if match prompt successful registration -->
    mov eax, 4
    mov ebx, 1
    mov ecx, registrationSuccessMsg
    mov edx, registrationSuccessMsgLength
    int 0x80

    jmp _mainPage

validate_alpha:
    xor ecx, ecx
.loop:
    mov al, [esi + ecx]
    cmp al, 10              ;check for Enter
    je .check_min_len
    cmp al, ' '             ;allow Space
    je .next
    cmp al, 'A'             ;check A-Z
    jb .failed
    cmp al, 'z'             ;check a-z
    ja .failed
.next:
    inc ecx
    jmp .loop
.check_min_len:
    cmp ecx, 3              ;minimum 3 characters for a name
    jb .failed
    mov eax, 1
    ret
.failed:
    xor eax, eax
    ret

_registerInvalidPage:
    ;if mismatch prompt the output -->
    mov eax, 4
    mov ebx, 1
    mov ecx, error_confirmPassword
    mov edx, error_confirmPasswordLength
    int 0x80

    mov byte [registerPassword], 0 ;clear the password SO it does not stored
    
    jmp _mainPage

_chooseDining:
    mov eax, 4
    mov ebx, 1
    mov ecx, diningPrompt
    mov edx, diningPromptLength
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, diningChoice
    mov edx, 2
    int 0x80

    cmp byte [diningChoice], '1'
    je _setDineIn
    cmp byte [diningChoice], '2'
    je _setTakeAway

    jmp _setError

_setDineIn:
    jmp _firstMenu

_setTakeAway:
    jmp _firstMenu

_setError:
    mov eax, 4
    mov ebx, 1
    mov ecx, errorChoose
    mov edx, errorChooseLength
    int 0x80

    jmp _chooseDining

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
    je _removeItem
    cmp al, '7'
    je _first_menu_confirmationExit

    jmp _mainPage

_removeItem:
    ;check if cart is empty or not
    mov eax, [cartCount]
    cmp eax, 0
    je _cartIsEmpty

    call _clearScreen
    call _displayCartContents  ;reused the same as cart one
    
    mov eax, 4
    mov ebx, 1
    mov ecx, removePrompt
    mov edx, removePromptLength
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, choiceOption
    mov edx, 2 
    int 0x80

    mov al, [choiceOption]
    sub al, '0'
    movzx ebx, al

    ;validate the number must be more than 0 and less or equal than cartCount
    cmp ebx, 1
    jl _removeError
    mov eax, [cartCount]        
    cmp ebx, eax
    jg _removeError

    dec ebx
    mov esi, ebx
    jmp _executingRemove

_displayCartContents:
    mov eax, 4
    mov ebx, 1
    mov ecx, receiptHeader
    mov edx, receiptHeaderLength
    int 0x80

    cmp byte [diningChoice], '1'
    je .dineIn
    mov ecx, receiptTakeAway
    mov edx, receiptTakeAwayLength
    jmp .printDining
.dineIn:
    mov ecx, receiptDineIn
    mov edx, receiptDineInLength
.printDining:
    mov eax, 4
    mov ebx, 1
    int 0x80

    ;print the list
    mov esi, 0
.listLoop:
    ;applying LIFO methods
    push esi ;last in
    
    pop esi ;first out
    push esi ;last in, save it again for the naming printing
    movzx eax, byte [cartItems + esi]

    ;now since i reusing the same variable for the cart
    ;im gonna create a local variable which using . so i dont need to define an entire line of code for this part, cause its subroutine 

    cmp eax, 1
    je .nClassic
    cmp eax, 2
    je .nCheese
    cmp eax, 3
    je .nBacon
    cmp eax, 4
    je .nVeggie
    cmp eax, 5
    je .nBikkuMakku
    cmp eax, 6
    je .nClassicTenders
    cmp eax, 7
    je .nSpicyTenders
    cmp eax, 8
    je .nHoneyTenders
    cmp eax, 9
    je .nBBQTenders
    cmp eax, 10
    je .nNasiLemak
    cmp eax, 11
    je .nLavaCake
    cmp eax, 12
    je .nSundae
    cmp eax, 13
    je .nCheesecake

    jmp .afterName
    
    ;do the same
.nClassic:
    mov ecx, nameClassic
    mov edx, nameClassicLength
    jmp .printViaHelper

.nCheese:
    mov ecx, nameCheese
    mov edx, nameCheeseLength
    jmp .printViaHelper

.nBacon:
    mov ecx, nameBacon
    mov edx, nameBaconLength
    jmp .printViaHelper

.nVeggie:
    mov ecx, nameVeggie
    mov edx, nameVeggieLength
    jmp .printViaHelper
    
.nBikkuMakku:
    mov ecx, nameBikkuMakku
    mov edx, nameBikkuLength
    jmp .printViaHelper

.nClassicTenders:
    mov ecx, nameClassicTenders 
    mov edx, nameClassicTendersLength
    jmp .printViaHelper

.nSpicyTenders:
    mov ecx, nameSpicyTenders
    mov edx, nameSpicyTendersLength
    jmp .printViaHelper

.nHoneyTenders:
    mov ecx, nameHoneyTenders
    mov edx, nameHoneyTendersLength
    jmp .printViaHelper

.nBBQTenders:
    mov ecx, nameBBQTenders
    mov edx, nameBBQTendersLength
    jmp .printViaHelper

.nNasiLemak:
    mov ecx, nameSpicyNasiLemak   
    mov edx, nameSpicyNasiLemakLength
    jmp .printViaHelper

.nLavaCake:
    mov ecx, nameLavaCake
    mov edx, nameLavaCakeLength
    jmp .printViaHelper

.nSundae:
    mov ecx, nameSundaeCake
    mov edx, nameSundaeCakeLength
    jmp .printViaHelper

.nCheesecake:
    mov ecx, nameCheeseCaked
    mov edx, nameCheeseCakedLength
    jmp .printViaHelper

.printViaHelper:
    mov eax, 4
    mov ebx, 1
    int 0x80

.afterName:
    pop esi
    inc esi
    cmp esi, [cartCount]
    jl .listLoop
    
    ret ;return

_removeError:
    mov eax, 4
    mov ebx, 1
    mov ecx, removeError
    mov edx, removeErrorLength
    int 0x80
    jmp _viewCartCheckout

_executingRemove:
    ;loop shifts items left: cartItems[i] = cartItems[i+1]
_shiftLoop:
    mov edi, esi
    inc edi

    mov eax, [cartCount]
    cmp edi, eax    ;is next index out of bounds?
    je _doneShifting    ;if yes then stop

    mov al, [cartItems + edi] ;load next item
    mov [cartItems + esi], al   ;store in the current item spots

    inc esi ;move to the next position
    jmp _shiftLoop

_doneShifting:
    dec dword [cartCount] ;reduce the item
    mov dword [totalPrice], 0    ;reset total to 0

    .startLoop:
        mov esi, 0
_recalculatePrice:
    cmp esi, [cartCount]
    je _finishRemoval

    movzx eax, byte [cartItems + esi];get all ID
    ;burger
    cmp eax, 1
    je .add1
    cmp eax, 2
    je .add2
    cmp eax, 3
    je .add3
    cmp eax, 4
    je .add4
    cmp eax, 5
    je .add5
    
    ;chicken tender
    cmp eax, 6
    je .add6
    cmp eax, 7
    je .add7
    cmp eax, 8
    je .add8
    cmp eax, 9
    je .add9

    ;nasi lemak and desserts
    cmp eax, 10
    je .add10
    cmp eax, 11
    je .add11
    cmp eax, 12
    je .add12
    cmp eax, 13
    je .add13
    jmp .nextItem                ;skip if id is unknown

.add1:  mov ebx, [priceClassicBurger]
        add [totalPrice], ebx
        jmp .nextItem
.add2:  mov ebx, [priceCheeseburger]
        add [totalPrice], ebx
        jmp .nextItem
.add3:  mov ebx, [priceBaconBurger]
        add [totalPrice], ebx
        jmp .nextItem
.add4:  mov ebx, [priceVeggieBurger]
        add [totalPrice], ebx
        jmp .nextItem
.add5:  mov ebx, [priceBikkuMakkuBurger]
        add [totalPrice], ebx
        jmp .nextItem
.add6:  mov ebx, [priceClassicChickenTenders]
        add [totalPrice], ebx
        jmp .nextItem
.add7:  mov ebx, [priceSpicyChickenTenders]
        add [totalPrice], ebx
        jmp .nextItem
.add8:  mov ebx, [priceHoneyMustardChickenTenders]
        add [totalPrice], ebx
        jmp .nextItem
.add9:  mov ebx, [priceBBQChickenTenders]
        add [totalPrice], ebx
        jmp .nextItem
.add10: mov ebx, [priceSpicyChickenNS]
        add [totalPrice], ebx
        jmp .nextItem
.add11: mov ebx, [priceChocolateLavaCake]
        add [totalPrice], ebx
        jmp .nextItem
.add12: mov ebx, [priceVanillaIceCreamSundae]
        add [totalPrice], ebx
        jmp .nextItem
.add13: mov ebx, [priceStrawberryCheesecake]
        add [totalPrice], ebx
        jmp .nextItem
.nextItem:
    inc esi
    jmp _recalculatePrice

_finishRemoval:
    mov eax, 4
    mov ebx, 1
    mov ecx, removeSuccessMsg
    mov edx, removeSuccessMsgLength
    int 0x80
    
    jmp _viewCartCheckout

_first_menu_confirmationExit:
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
    je _firstMenu
    cmp al, 'n'
    je _firstMenu

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

    cmp byte [diningChoice], '1'
    je _printDineInText

    ;if not 1 then it's take away
    mov ecx, receiptTakeAway
    mov edx, receiptTakeAwayLength
    jmp _writeDiningOption

_printDineInText:
    mov ecx, receiptDineIn
    mov edx, receiptDineInLength

_writeDiningOption:
    mov eax, 4
    mov ebx, 1
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

    mov eax, 3
    mov ebx, 0
    mov ecx, cardBuffer     
    mov edx, 32
    int 0x80

    mov esi, cardBuffer
    mov edi, 16             ;want 6 digits
    call validate_input
    cmp eax, 0
    je _payWithCardError   

    mov eax, 4
    mov ebx, 1
    mov ecx, expiryPrompt
    mov edx, expiryPromptLength
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, expiryBuffer
    mov edx, 32
    int 0x80

    mov esi, expiryBuffer
    mov edi, 8              ;want exactly 8 digits
    call validate_input
    cmp eax, 0
    je _payWithCardError

    mov eax, 4
    mov ebx, 1
    mov ecx, cvvPrompt
    mov edx, cvvPromptLength
    int 0x80

    mov eax, 3
    mov ebx, 0
    mov ecx, cvvBuffer
    mov edx, 32
    int 0x80

    mov esi, cvvBuffer
    mov edi, 3              ;want exactly 3 digits
    call validate_input
    cmp eax, 0
    je _payWithCardError

    jmp _paymentSuccess

_payWithCardError:
    mov eax, 4
    mov ebx, 1
    mov ecx, error_emptyInput
    mov edx, error_emptyInputLength
    int 0x80
    jmp _payWithCard

validate_input:
    xor ecx, ecx            ;clear ECX

.loop:
    mov al, [esi + ecx]     ;get character from buffer
    cmp al, 10              ;is it a Newline (Enter)?
    je .check_length        ;if Enter is pressed, check if length is correct
    
    cmp al, '0'             ;is it less than '0'
    jb .failed
    cmp al, '9'             ;is it greater than '9'
    ja .failed
    
    inc ecx                 ;increment count
    cmp ecx, 20             ;safety limit to prevent infinite loops
    jg .failed
    jmp .loop

.check_length:
    cmp ecx, edi            ;does actual count == required length
    jne .failed
    mov eax, 1            
    ret

.failed:
    mov eax, 0              ;failed
    ret               

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

    mov eax, 1          ;sys_exit
    xor ebx, ebx        ;return 0 
    int 0x80

    ;assumption
    ;first assumption is cash payment
    ;second is only 1 account if make 2 the first one deleted
    ;third assumption when the system close it won't save the user info thus need  to register again
    ;if the user entered other than alphabet and number which is like japaense or chinese it will trigger error
    ;the store have unlimited item, basically no run out of stocks
    ;card number since there are multiple bank with different number we accept all kind of number no matter what bank it is as long its equal to 16 digits
    ;for the expired card dates it only accept numbers for eg 02252027 translate to february 25 2027 is the expired date
    ;
