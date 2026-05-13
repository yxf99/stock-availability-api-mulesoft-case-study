# SLA and Governance

## API Consumers

- E-commerce front
- Mobile app
- Checkout service

## Availability Target

- 99.5% during business hours
- 99.0% outside business hours

## Response Time Target

Product page availability:

- P95 < 500 ms with cache or prepared index
- P95 < 1500 ms with real-time orchestration

Checkout validation:

- P95 < 2000 ms

## Timeout Rules

- SAP timeout: 3 seconds
- OMS timeout: 2 seconds
- Store Stock timeout: 2 seconds
- Global API timeout: 5 seconds

## API Manager Policies

- Client ID enforcement
- OAuth 2.0 / JWT validation
- Rate limiting
- SLA-based access
- CORS if consumed by a web front

## Monitoring KPIs

- Response time
- Error rate
- Timeout rate
- Source system latency
- API calls by consumer
- Out-of-stock rate
- Checkout validation failure rate
