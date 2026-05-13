# Timeout Investigation

## Situation

The Stock Availability API experiences timeouts for specific products.

## Initial Hypotheses

1. Response volume too large
2. SAP source latency
3. OMS reservation query latency
4. Transformation logic too heavy
5. No pagination or excessive payload size
6. Double counting or duplicated records between stock sources

## Investigation Approach

1. Identify product IDs causing timeouts
2. Compare successful and failing product IDs
3. Measure source system response time
4. Measure payload size
5. Check correlation IDs in logs
6. Validate whether stock hierarchy causes duplicated records
7. Document expected vs actual behavior

## Short-term Actions

- Add response size monitoring
- Improve timeout error response
- Communicate incident scope to business
- Add Postman scenario for timeout simulation

## Long-term Actions

- Reduce payload volume
- Deduplicate records
- Clarify stock source of truth
- Add cache or prepared index if the front requires fast response
- Add non-regression test scenario
