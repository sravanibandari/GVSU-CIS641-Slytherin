# Functional Requirements

1. Signup/Login
    1. The username shall comprise of first name and last name.
	2. The website shall ask the user to set down a password upon registration.
	3. The phone number domain shall have restriction up to ten numbers only.
	4. The user shall be asked to enter details such as name of city, address and ZIP code.
	5. The user shall be asked for email and gender for registration.

2. Item
	1. The name of the item shall be displayed to the user on visiting the website.
	2. Each item shall exhibit a brief description of the product.
	3. A sample picture of every product shall be presented to the user.
	4. The cost of the product shall be displayed to the user.
	5. Each product shall be put into a main and a sub category, by the admin.

3. Cart
	1. The products shall be added to cart upon selecting the buy button.
	2. The prices of the products shall be summed up when the products are added to the cart and displayed to the user.
	3. Each item shall consist of item ID and user ID shall be allotted to every user.
	4. The quantity of the items ordered shall be displayed.
	5. The item not required by the user shall be removed by clicking on remove button.

4. Orders
	1. Every order shall comprise of its own unique order ID.
	2. Every user shall be displayed their own order page with selected products by user.
	3. The total cost of the order shall be displayed to the user.
	4. The order shall be placed by the customer on finishing the payment.
	5. The status of the order placed shall be exhibited to the user.

5. Payment
	1. The user shall enter type of card (debit card or credit card) for processing the payment.
	2. The user shall be asked for card number.
	3. The user shall enter the CVV and expiration date of the card.
	4. once the payment is completed, the user shall receive payment successfull pop-up
	5. At a time, the payment shall be processed by a single card only.


# Non-Functional Requirements

1. Security
	1. The payment process gateway shall be PCI/DCS compliant.
	2. Easy payment options shall be available to the customer upon proceeding to pay for effortless pay.
	4. The system shall be scalable to support a hundred visits at the same time.
	5. Unregistered users shall not be allowed to login to the website

2. Homepage 
   1. The data of the user shall be backed up automatically on logging in to the website.
   2. The products that are only added by the admin shall be displayed to the user.
   3. Reviews and feedback from multiple customers shall be displayed to the user on selecting a product.
   4. The date format shall be mm/dd/yyyy
   5. The rating of the product shall be displayed to the user in the product description.
3. Cart
    1. A order shall be placed by a user without help of any administrator.
    2. Discount options shall be provided to the customer upon proceeding to the payment.
    3. The product shall be added to the wishlist by clicking the save option displayed below the order.
    4. A user shall easily find the categories section.
	5. The item shall be added to cart within seconds clicking on buy.

4. Login 
   1. Only system administrator shall have access to perform admin operations.
   2. The passwords of existing users shall be saved in to the system when signed-in to the webpage.
   3. The user address shall have a restriction on the ZIP code.
   4. Any web browser shall be compatible with this website.
   5. The website shall be protected from sql intrusion.

5. Performance
	1. The homepage of the website shall load in less than 5 seconds.
	2. Customizations made to the website shall be reflected to the homepage, every single day upon connecting to the local server.
	3. 