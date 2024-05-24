# Brevo::MasterDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email id of master account | [optional] |
| **company_name** | **String** | Company name of master account organization | [optional] |
| **id** | **Integer** | Unique identifier of the master account organization | [optional] |
| **currency_code** | **String** | Currency code of the master account organization | [optional] |
| **timezone** | **String** | Timezone of the master account organization | [optional] |
| **billing_info** | [**MasterDetailsResponseBillingInfo**](MasterDetailsResponseBillingInfo.md) |  | [optional] |
| **plan_info** | [**MasterDetailsResponsePlanInfo**](MasterDetailsResponsePlanInfo.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::MasterDetailsResponse.new(
  email: null,
  company_name: null,
  id: null,
  currency_code: null,
  timezone: null,
  billing_info: null,
  plan_info: null
)
```

