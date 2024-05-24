# Brevo::MasterDetailsResponsePlanInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency_code** | **String** | Plan currency | [optional] |
| **next_billing_at** | **Integer** | Timestamp of next billing date | [optional] |
| **price** | **Float** | Plan amount | [optional] |
| **plan_period** | **String** | Plan period type | [optional] |
| **sub_accounts** | **Integer** | Number of sub-accounts | [optional] |
| **features** | [**Array&lt;MasterDetailsResponsePlanInfoFeaturesInner&gt;**](MasterDetailsResponsePlanInfoFeaturesInner.md) | List of provided features in the plan | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::MasterDetailsResponsePlanInfo.new(
  currency_code: null,
  next_billing_at: null,
  price: null,
  plan_period: null,
  sub_accounts: null,
  features: null
)
```

