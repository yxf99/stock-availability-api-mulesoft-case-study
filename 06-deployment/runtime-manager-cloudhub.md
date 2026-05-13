# Runtime Manager and CloudHub Deployment

## Deployment Steps

1. Package Mule application
2. Deploy to CloudHub through Runtime Manager
3. Select target environment: DEV / UAT / PROD
4. Configure runtime version
5. Configure workers and vCore
6. Add environment properties
7. Start application
8. Validate application status
9. Check logs
10. Run Postman smoke tests

## Environment Properties

```yaml
sap.host: "https://sap-dev.company.com"
sap.timeout: "3000"

oms.host: "https://oms-dev.company.com"
oms.timeout: "2000"

storeStock.host: "https://store-stock-dev.company.com"
storeStock.timeout: "2000"

api.id: "123456"
```

## Notes

Environment-specific properties allow the same Mule application to be deployed across DEV, UAT and PROD without changing the code.
