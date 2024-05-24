# Brevo::OrderBilling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Full billing address. | [optional] |
| **city** | **String** | Exact city of the address. | [optional] |
| **country_code** | **String** | Billing country 2-letter ISO code. | [optional] |
| **phone** | **String** | Phone number to contact for further details about the order, Mandatory if \&quot;email\&quot; field is not passed. | [optional] |
| **post_code** | **String** | Postcode for delivery and billing. | [optional] |
| **payment_method** | **String** | How the visitor will pay for the item(s), e.g. paypal, check, etc. | [optional] |
| **region** | **String** | Exact region (state/province) for delivery and billing. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::OrderBilling.new(
  address: 15 Somewhere Road, Brynmenyn,
  city: Basel,
  country_code: CA,
  phone: 01559 032133,
  post_code: 4052,
  payment_method: PayPal,
  region: Northwestern Switzerland
)
```

