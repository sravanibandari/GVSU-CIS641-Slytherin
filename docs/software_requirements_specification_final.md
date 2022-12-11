# Overview
A Software Requirements Specification(SRS) is a document which explains all the features and requirements made or built into the system (i.e) what the system will do.This document is written to condense the functional and non-functional requirements of our website.

# Software Requirements
This section contains the Software requirements of ECommerce website's functional and non-functional requirements. Functional requirements are the features of the website that each developers work on to achieve them and non-functional requirements defines the performance and security.

## Functional Requirements

### Signup/Login
| ID | Requirement |
| :-------------: | :----------: |
| FR1 | The username shall comprise of first name and last name |
| FR2 | The website shall ask the user to set down a password upon registration |
| FR3 | The phone number domain shall have restriction up to ten number only |
| FR4 | The user shall be asked to enter details such as name of city, address and ZIP code |
| FR5 | The user shall be asked for email and gender for registration |


### Item
| ID | Requirement |
| :-------------: | :----------: |
| FR6 | The name of the item shall be displayed to the user on visiting the website |
| FR7 | Each item shall exhibit a brief description of the product |
| FR8 | A sample picture of every product shall be presented to the user |
| FR9 | The cost of the product shall be displayed to the user |
| FR10 | Each product shall be put into a main and a sub category, by the admin |

### Cart
| ID | Requirement |
| :-------------: | :----------: |
| FR11 | The products shall be added to cart upon selecting the add to cart button. |
| FR12 | The prices of the products shall be summed up when the products are added to the cart and displayed to the user |
| FR13 | Each item shall consist of item ID and user ID shall be allotted to every user |
| FR14 | The quantity of the items ordered shall be displayed |
| FR15 | The item not required by the user shall be removed by clicking on remove button |

### Orders
| ID | Requirement |
| :-------------: | :----------: |
| FR16 | Every order shall comprise of its own unique order ID. |
| FR17 | Every user shall be displayed their own order page with selected products by user|
| FR18 | The total cost of the order shall be displayed to the user |
| FR19 | The order shall be placed by the customer on finishing the payment |
| FR20 | The status of the order placed shall be exhibited to the user |

### Payment
| ID | Requirement |
| :-------------: | :----------: |
| FR21 | The user shall enter type of card (debit card or credit card) for processing the payment. |
| FR22 | The user shall be asked for card number|
| FR23 | The user shall enter the CVV and expiration date of the card|
| FR24 | Once the payment is completed, the user shall receive payment successfull pop-up|
| FR25 | At a time, the payment shall be processed by a single card only |



## Non-Functional Requirements

### Security
| ID | Requirement |
| :-------------: | :----------: |
| NFR1 | The payment process gateway shall be PCI/DCS compliant |
| NFR2 | Easy payment options shall be available to the customer upon proceeding to pay for effortless pay|
| NFR3 | The database shall be accessible only to the admin |
| NFR4 | The system shall be scalable to support a hundred visits at the same time |
| NFR5 | Unregistered users shall not be allowed to login to the website |

### Homepage
| ID | Requirement |
| :-------------: | :----------: |
| NFR6 | The data of the user shall be backed up automatically on logging in to the website |
| NFR7 | The products that are only added by the admin shall be displayed to the user|
| NFR8 | Reviews and feedback from multiple customers shall be displayed to the user on selecting a product |
| NFR9 | The date format shall be mm/dd/yyyy |
| NFR10 | The rating of the product shall be displayed to the user in the product description |

### Cart
| ID | Requirement |
| :-------------: | :----------: |
| NFR11 | A order shall be placed by a user without help of any administrator|
| NFR12 | Options shall be provided to the customer upon proceeding to the payment |
| NFR13 | The product shall be added to the wishlist by clicking the save option displayed below the order |
| NFR14 | A user shall easily find the categories section |
| NFR15 | The item shall be added to cart within seconds clicking on buy |

### Login
| ID | Requirement |
| :-------------: | :----------: |
| NFR16 | Only system administrator shall have access to perform admin operations|
| NFR17 | The passwords of existing users shall be saved in to the system when signed-in to the webpage |
| NFR18 | The user address shall have a restriction on the ZIP code. |
| NFR19 | Any web browser shall be compatible with this website |
| NFR20 | The website shall be protected from sql intrusion |

### Performance
| ID | Requirement |
| :-------------: | :----------: |
| NFR21 | The homepage of the website shall load in less than 5 seconds |
| NFR22 | Customizations made to the website shall be reflected to the homepage, every single day upon connecting to the local server |
| NFR23 | The databse of website shall be able to store as many images uploaded by the admin |
| NFR24 | The website shall be user-friendly |
| NFR25 | Trouble shooting shall be easy whenever depolyment fails |



# Change management plan
<Description of what this section is>

# Traceability links
<Description of this section>

## Use Case Diagram Traceability
| Artifact ID | Artifact Name | Requirement ID |
| :-------------: | :----------: | :----------: |
| UseCase1 | Move Player | FR5 |
| UseCase2 | Move Player | FR5 |
| UseCase3 | Move Player | FR5 |
| … | … | … |

## Class Diagram Traceability
| Artifact Name | Requirement ID |
| :-------------: |:----------: |
| classDiagram | NFR3, FR5 |

## Activity Diagram Traceability
| Artifact ID | Artifact Name | Requirement ID |
| :-------------: | :----------: | :----------: |
| 1 | [Admin Activity Diagram](https://github.com/sravanibandari/GVSU-CIS641-Slytherin/blob/master/artifacts/Funtional%20Models/Admin_ActivityDiagram.jpg) | FR1-5, NFR2 |
| 2 | [Login Activity Diagram](https://github.com/sravanibandari/GVSU-CIS641-Slytherin/blob/master/artifacts/Funtional%20Models/Login_ActivityDiagram.jpg)| FR1-5, NFR2 |

## Software Artifacts
This sections gives the details and links to the artifcats like Use Case Diagram,Class Diagram,Activity Doagram and Use Case Description
* [Class Diagram](https://github.com/sravanibandari/GVSU-CIS641-Slytherin/blob/master/artifacts/Funtional%20Models/ClassDiagram.jpg)
* [Admin Activity Diagram](https://github.com/sravanibandari/GVSU-CIS641-Slytherin/blob/master/artifacts/Funtional%20Models/Admin_ActivityDiagram.jpg)
* [Login Activity Diagram](https://github.com/sravanibandari/GVSU-CIS641-Slytherin/blob/master/artifacts/Funtional%20Models/Login_ActivityDiagram.jpg)
* [Use Case Description](https://github.com/sravanibandari/GVSU-CIS641-Slytherin/blob/master/artifacts/Funtional%20Models/Use%20Case%20Description.docx)
* [Cart Payment Use Case Diagram](https://github.com/sravanibandari/GVSU-CIS641-Slytherin/blob/master/artifacts/Funtional%20Models/Cart_payment_usecase.jpeg)
* [Main SubCategory Use Case Diagram](https://github.com/sravanibandari/GVSU-CIS641-Slytherin/blob/master/artifacts/Funtional%20Models/Main_subcategory_usecase.jpeg)
