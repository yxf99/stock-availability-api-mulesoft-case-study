# Business Need

## Context 

The e-commerce front needs to display product availability before customers add a product to the cart.

The checkout service also needs to revalidate stock before order confirmation, because stock can change between product page consultation and checkout.

## Business Questions

The API must answer:

- Is the product available?
- What quantity is available?
- Can the product be added to the cart?
- Can the cart proceed to checkout?
- What is the reason if the product is not available?

## Consumers

- E-commerce front
- Mobile application
- Checkout service

## Source Systems

- SAP: warehouse and back-office stock
- OMS: orders in progress and reservations
- Store Stock System: local store availability

## Key Constraints

- Fast response required for product page
- Accurate validation required before checkout
- Avoid double-counting between SAP and store stock
- Handle source system timeouts
- Return clear business statuses and technical errors
