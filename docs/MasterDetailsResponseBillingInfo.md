# Brevo::MasterDetailsResponseBillingInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Billing email id of master account | [optional] |
| **company_name** | **String** | Company name of master account | [optional] |
| **name** | [**MasterDetailsResponseBillingInfoName**](MasterDetailsResponseBillingInfoName.md) |  | [optional] |
| **address** | [**MasterDetailsResponseBillingInfoAddress**](MasterDetailsResponseBillingInfoAddress.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::MasterDetailsResponseBillingInfo.new(
  email: null,
  company_name: null,
  name: null,
  address: null
)
```

