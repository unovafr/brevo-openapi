# Brevo::CreatePaymentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the object created |  |
| **url** | **String** | URL of the payment request created | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreatePaymentResponse.new(
  id: 122,
  url: https://pay.brevo.com/payment/6d4ec0b2b48ef803df4103ve
)
```

