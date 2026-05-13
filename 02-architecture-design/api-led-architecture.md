# API-led Architecture

## Objective

Expose a simple stock availability API to e-commerce consumers while hiding the complexity of SAP, OMS and Store Stock systems.

## Architecture Layers

### Experience API

Consumer-facing API.

Responsibilities:

- Expose `/products/{productId}/availability`
- Adapt the response to e-commerce needs
- Return `available`, `canAddToCart`, `canCheckout`
- Hide backend complexity from the front

### Process API

Business orchestration layer.

Responsibilities:

- Orchestrate SAP, OMS and Store Stock System
- Apply stock calculation rules
- Avoid double counting
- Deduct reservations and orders in progress
- Handle fallback and source errors

### System APIs

Source-specific API layer.

Responsibilities:

- Encapsulate SAP
- Encapsulate OMS
- Encapsulate Store Stock System
- Normalize source responses
- Isolate source-specific complexity

## Key Design Principle

The front should not call SAP, OMS or Store Stock directly.

The front consumes a stable API contract, while the Process API manages source orchestration and business rules.
