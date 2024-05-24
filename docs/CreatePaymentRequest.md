# Brevo::CreatePaymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference** | **String** | Reference of the payment request, it will appear on the payment page.  |  |
| **cart** | [**Cart**](Cart.md) |  |  |
| **contact_id** | **Integer** | Brevo ID of the contact requested to pay.  |  |
| **description** | **String** | description of payment request  | [optional] |
| **notification** | [**Notification**](Notification.md) |  | [optional] |
| **configuration** | [**Configuration**](Configuration.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreatePaymentRequest.new(
  reference: Invoice #INV0001,
  cart: null,
  contact_id: 43,
  description: Shipping Cost for sending bottles to NYC,
  notification: null,
  configuration: null
)
```

