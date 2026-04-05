extern GetStdHandle, WriteConsoleA, ReadConsoleA, ExitProcess

section .data
newLine db 10, 0

userInput db 16 dup(0) ; buffer for user input

welcomeMsg: 
           db '===============================', 10
           db 'Welcome to Mckudonarudo POS system!', 10 
           db 'Feeling hungry? Please Order now!', 10
           db '===============================', 10, 0

registeringPerk: 
               db '====================================', 10
               db 'have not registered yet? Register now! `', 10
               db 'for 10% off on your first order!', 10
               db '=====================================', 10, 0

firstMenuLogin: 
               db '===============================', 10
               db 'Please select an option:', 10
               db '1. Login', 10
               db '2. Register', 10
               db '3. Exit', 10
               db '===============================', 10, 0

promptUserLogin: 
            db '===============================', 10
            db 'Please enter your name to login:', 10
            db 'Please enter your password to login:', 10
            db '===============================', 10, 0 

promptUserRegister: 
            db '===============================', 10
            db 'Please enter your name to register:', 10
            db 'Please enter your password to register:', 10
            db '===============================', 10, 0              

successfulLogin: 
                db '===============================', 10, 
                db 'Login successful!', 10
                db '===============================', 10, 0

registrationSuccess: 
                    db '===============================', 10
                    db 'Registration successful! Please login to continue.', 10
                    db '===============================', 10, 0
menuSelection:
                db '===============================', 10
                db 'Please select what you craving for!', 10
                db '1. Burger', 10
                db '2. Chicken Tenders', 10
                db '3. Spicy Chicken with Nasi Lemak', 10
                db '4. Desserts', 10
                db '5. Exit', 10, 0
                db '===============================', 10, 0

menuDisplayBurger: 
                db '===============================', 10
                db 'Burger Selection Menu', 10
                db '1. Classic Burger - $5.99', 10
                db '2. Cheeseburger - $6.99', 10
                db '3. Bacon Burger - $7.99', 10
                db '4. Veggie Burger - $6.49', 10
                db '5. Bikku Makku Burger - $8.99', 10
                db '6. Back to Main Menu', 10
                db '===============================', 10, 0

menuDisplaySpicyChickenNasiLemak: 
                db '===============================', 10
                db 'Spicy Chicken with Nasi Lemak Selection Menu', 10
                db '1. Spicy Chicken with Nasi Lemak - $7.99', 10
                db '2. Back to Main Menu', 10
                db '===============================', 10

menuDisplayDesserts: 
                db '===============================', 10
                db 'Desserts Selection Menu', 10
                db '1. Chocolate Lava Cake - $4.99', 10
                db '2. Vanilla Ice Cream Sundae - $3.99', 10
                db '3. Strawberry Cheesecake - $5.49', 10
                db '4. Back to Main Menu', 10
                db '===============================', 10, 0

menuDisplayChickenTenders: 
                db '===============================', 10
                db 'Chicken Tenders Selection Menu', 10
                db '1. Classic Chicken Tenders - $4.99', 10
                db '2. Spicy Chicken Tenders - $5.49', 10
                db '3. Honey Mustard Chicken Tenders - $5.99', 10
                db '4. BBQ Chicken Tenders - $5.99', 10
                db '5. Back to Main Menu', 10
                db '===============================', 10, 0

makeItAMeal:     
                db '===============================', 10
                db 'Make it a meal or ala carte?', 10
                db '1. Make it a meal (add $5.00)', 10
                db '2. Ala Carte', 10
                db '3. Back to Menu', 10
                db '===============================', 10 , 0

ifAmeal: 
                db '===============================', 10
                db '1. Regular French Fries', 10
                db '2. Large French Fries (add $1.00)', 10
                db '3. Regular Soft Drink', 10
                db '4. Large Soft Drink (add $1.00)', 10
                db '5. Back to Main Menu', 10
                db '===============================', 10, 0

ifAlaCarte: 
                db '==================' , 10
                db 'Item added to cart!', 10
                db '==================' , 10, 0

viewCart: 
                db '===============================', 0
                db 'Your cart:', 10
                db '1. View Cart', 10
                db '2. Checkout', 10
                db '3. Back to Main Menu', 10
                db '===============================', 10, 0

priceDisplayItemOnScreen:
                 db '===============================', 10
                 db 'Your current total is: $', 10
                 db 'exclude 6% tax', 10
                 db '===============================', 10, 0

checkOutDisplayPrice: 
                    db '===============================', 10
                    db 'Your final total is: $', 10
                    db 'include 6% tax', 10
                    db '1. Pay with Card', 10
                    db '===============================', 10, 0

payWithCard: 
            db '===============================', 10
            db 'Enter your card details to complete the payment.', 10
            db 'Card Number: ', 10
            db 'Expiration Date (MM/YY): ', 10
            db 'CVV: ', 10
            db '===============================', 10, 0

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
                db '===============================', 10, 0

thankYouMessage: 
                db '===============================', 10
                db 'Thank you for visiting Mckudonarudo! Have a great day!', 10
                db '===============================', 10, 0


;now we have to define the data to hold item prices and cart total
;burger
priceClassicBurger dd 599
priceSpicyBurger dd 649
priceHoneyMustardBurger dd 699
priceBBQBurger dd 699

;Chicken Tenders
priceClassicChickenTenders dd 499
priceSpicyChickenTenders dd 549
priceHoneyMustardChickenTenders dd 599
priceBBQChickenTenders dd 599

;Spicy Chicken with Nasi Lemak
priceSpicyChickenNasiLemak dd 799

;Desserts
priceChocolateLavaCake dd 499
priceVanillaIceCreamSundae dd 399
priceStrawberryCheesecake dd 549

;Meal Add-ons
largeFriesPrice dd 100
largeSoftDrinkPrice dd 100

;make it a meal price
makeItAMealPrice dd 500

;storing total price in cart
cartTotal dd 0

section .bss
    hStdOut         resq 1      ;variable to hold the Output Handle
    hStdIn          resq 1      ;variable to hold the Input Handle
    inputBuf        resb 64     ;buffer to store the user's keystrokes
    charsRead       resq 1      ;tracks how many characters the user typed

section .text
    global _main
    extern GetStdHandle, WriteConsoleA, ReadConsoleA, ExitProcess

_main:
    sub rsp, 40

    ; --- SETUP HANDLES ---
    mov rcx, -11
    call GetStdHandle
    mov [rel hStdOut], rax
    mov rcx, -10
    call GetStdHandle
    mov [rel hStdIn], rax

    

.exit_program:
    mov rcx, [rel hStdOut]
    lea rdx, [rel thankYouMessage]
    mov r8, 21
    lea r9, [rel charsRead]
    mov qword [rsp + 32], 0
    call WriteConsoleA

    add rsp, 40
    xor rcx, rcx
    call ExitProcess