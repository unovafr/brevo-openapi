# Brevo::MasterDetailsResponseBillingInfoAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **street_address** | **String** | Street address | [optional] |
| **locality** | **String** | Locality | [optional] |
| **postal_code** | **String** | Postal code | [optional] |
| **state_code** | **String** | State code | [optional] |
| **country_code** | **String** | Country code | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::MasterDetailsResponseBillingInfoAddress.new(
  street_address: null,
  locality: null,
  postal_code: null,
  state_code: null,
  country_code: null
)
```

