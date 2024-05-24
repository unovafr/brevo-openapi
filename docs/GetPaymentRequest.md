# Brevo::GetPaymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reference** | **String** | Reference of the payment request, it will appear on the payment page.  |  |
| **status** | **String** | Status of the payment request. |  |
| **configuration** | [**Configuration**](Configuration.md) |  | [optional] |
| **contact_id** | **Integer** | Brevo ID of the contact requested to pay.  | [optional] |
| **number_of_reminders_sent** | **Integer** | number of reminders sent.  | [optional] |
| **cart** | [**Cart**](Cart.md) |  |  |
| **notification** | [**Notification**](Notification.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetPaymentRequest.new(
  reference: Invoice #INV0001
,
  status: paid,
  configuration: null,
  contact_id: 43,
  number_of_reminders_sent: 5,
  cart: null,
  notification: null
)
```

