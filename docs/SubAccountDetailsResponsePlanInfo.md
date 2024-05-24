# Brevo::SubAccountDetailsResponsePlanInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credits** | [**SubAccountDetailsResponsePlanInfoCredits**](SubAccountDetailsResponsePlanInfoCredits.md) |  | [optional] |
| **features** | [**SubAccountDetailsResponsePlanInfoFeatures**](SubAccountDetailsResponsePlanInfoFeatures.md) |  | [optional] |
| **plan_type** | **String** | type of the plan | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SubAccountDetailsResponsePlanInfo.new(
  credits: null,
  features: null,
  plan_type: null
)
```

