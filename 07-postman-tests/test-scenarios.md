# Postman Test Scenarios

| Scenario | Request | Expected Result |
|---|---|---|
| Product available | GET /products/P001/availability?storeId=PARIS001&channel=web | 200, available true, canAddToCart true |
| Out of stock | GET /products/P002/availability?storeId=PARIS001&channel=web | 200, available false, canAddToCart false |
| Missing channel | GET /products/P001/availability?storeId=PARIS001 | 400 INVALID_REQUEST |
| Product not found | GET /products/UNKNOWN/availability?channel=web | 404 PRODUCT_NOT_FOUND |
| Unauthorized | Request without token | 401 UNAUTHORIZED |
| Source unavailable | OMS down | 503 SOURCE_UNAVAILABLE |
| Source timeout | SAP timeout | 504 SOURCE_TIMEOUT |
| Rate limit exceeded | Too many requests | 429 TOO_MANY_REQUESTS |

## Test Objectives

- Validate nominal cases
- Validate business statuses
- Validate error handling
- Validate source system failure behavior
- Validate response fields consumed by e-commerce front
