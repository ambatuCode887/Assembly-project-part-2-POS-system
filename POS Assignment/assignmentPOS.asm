extern GetStdHandle, WriteConsoleA, ReadConsoleA, ExitProcess

section .data
welcomeMsg 
           db '===============================', 0
           db 'Welcome to Mckudonarudo POS system!', 0 
           db 'Feeling hungry? Please Order now!', 0'
           db '===============================', 0

registeringPerk 
               db '====================================', 0
               db 'have not registered yet? Register now! `', 0
               db 'for 10% off on your first order!', 0
               db '=====================================', 0

firstMenuLogin 
               db '===============================', 0
               db 'Please select an option:', 0
               db '1. Login',
               db '2. Register', 
               db '3. Exit', 0'
               db '===============================', 0

successfulLogin 
                db '===============================', 0
                db 'Login successful!', 0
                db '===============================', 0

registrationSuccess 
                    db '===============================', 0
                    db 'Registration successful! Please login to continue.', 0
                    db '===============================', 0
menuSelection
                db '===============================', 0
                db 'Please select what you craving for!',0
                db '1. Burger', 0
                db '2. Chicken Tenders', 0
                db '3. Spicy Chicken with Nasi Lemak', 0
                db '4. Desserts', 0
                db '5. Exit', 0
                db '===============================', 0

menuDisplayBurger 
                db '===============================', 0
                db 'Burger Selection Menu', 0
                db '1. Classic Burger - $5.99', 0
                db '2. Cheeseburger - $6.99', 0
                db '3. Bacon Burger - $7.99', 0
                db '4. Veggie Burger - $6.49', 0
                db '5. Bikku Makku Burger - $8.99', 0
                db '6. Back to Main Menu', 0
                db '===============================', 0

menuDisplaySpicyChickenNasiLemak 
                db '===============================', 0
                db 'Spicy Chicken with Nasi Lemak Selection Menu', 0
                db '1. Spicy Chicken with Nasi Lemak - $7.99', 0
                db '2. Back to Main Menu', 0
                db '===============================', 0

menuDisplayDesserts 
                db '===============================', 0
                db 'Desserts Selection Menu', 0
                db '1. Chocolate Lava Cake - $4.99', 0
                db '2. Vanilla Ice Cream Sundae - $3.99', 0
                db '3. Strawberry Cheesecake - $5.49', 0
                db '4. Back to Main Menu', 0
                db '===============================', 0

menuDisplayChickenTenders 
                db '===============================', 0
                db 'Chicken Tenders Selection Menu', 0
                db '1. Classic Chicken Tenders - $4.99', 0
                db '2. Spicy Chicken Tenders - $5.49', 0
                db '3. Honey Mustard Chicken Tenders - $5.99', 0
                db '4. BBQ Chicken Tenders - $5.99', 0
                db '5. Back to Main Menu', 0
                db '===============================', 0

makeItAMeal     
                db '===============================', 0
                db 'Make it a meal or ala carte?', 0
                db '1. Make it a meal (add $5.00)', 0
                db '2. Ala Carte', 0
                db '3. Back to Menu', 0
                db '===============================', 0

ifAmeal 
                db '===============================' , 0
                db '1. Regular French Fries', 0
                db '2. Large French Fries (add $1.00)', 0
                db '3. Regular Soft Drink', 0
                db '4. Large Soft Drink (add $1.00)', 0
                db '5. Back to Main Menu', 0
                db '===============================' , 0

ifAlaCarte
                db '==================' , 0
                db 'Item added!', 0
                db '==================' , 0

viewCart
                db '===============================', 0
                db 'Your cart:', 0
                db '1. View Cart', 0
                db '2. Checkout', 0
                db '3. Back to Main Menu', 0
                db '===============================', 0

priceDisplayItemOnScreen
                 db '===============================', 0
                 db 'Your current total is: $', 0
                 db 'exclude 6% tax', 0
                 db '===============================', 0

checkOutDisplayPrice 
                    db '===============================', 0
                    db 'Your final total is: $', 0
                    db 'include 6% tax', 0
                    db '1. Pay with Card', 0
                    db '===============================', 0

payWithCard 
            db '===============================', 0
            db 'Enter your card details to complete the payment.', 0
            db 'Card Number: ', 0
            db 'Expiration Date (MM/YY): ', 0
            db 'CVV: ', 0
            db '===============================', 0

payWithCardFailed 
                db '===============================', 0
                db 'Payment failed! Please try again.', 0
                db '===============================', 0

payWithCardSuccessful 
                db '===============================', 0
                db 'Payment successful! Thank you for your order!', 0
                db '===============================', 0

orderAgain 
                db '===============================', 0
                db 'Would you like to order again?', 0
                db '1. Yes', 0
                db '2. No', 0
                db '===============================', 0

thankYouMessage 
                db '===============================', 0
                db 'Thank you for visiting Mckudonarudo! Have a great day!', 0
                db '===============================', 0

section .bss


section .text
    global _main
 

    ; --- Exit ---
    add rsp, 40                 ; Clean up shadow space before exiting
    xor rcx, rcx
    call ExitProcess