%dw 2.0
output application/json

var sapStock = payload.sap.availableQuantity default 0
var reservedStock = payload.oms.reservedQuantity default 0
var storeStock = payload.store.availableQuantity default 0

var availableToSell =
    if (vars.fulfillmentMode == "CLICK_AND_COLLECT")
        storeStock - reservedStock
    else
        sapStock - reservedStock

---
{
  productId: vars.productId,
  storeId: vars.storeId,
  channel: vars.channel,
  available: availableToSell > 0,
  availableQuantity: if (availableToSell > 0) availableToSell else 0,
  canAddToCart: availableToSell > 0,
  canCheckout: availableToSell > 0,
  availabilityStatus: if (availableToSell > 0) "AVAILABLE" else "OUT_OF_STOCK",
  reasonCode: if (availableToSell > 0) null else "OUT_OF_STOCK",
  fulfillmentMode: vars.fulfillmentMode,
  lastUpdatedAt: now()
}
