# Brevo::SubAccountDetailsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the sub-account user | [optional] |
| **email** | **String** | Email id of the sub-account organization | [optional] |
| **company_name** | **String** | Sub-account company name | [optional] |
| **groups** | [**Array&lt;SubAccountDetailsResponseGroupsInner&gt;**](SubAccountDetailsResponseGroupsInner.md) |  | [optional] |
| **plan_info** | [**SubAccountDetailsResponsePlanInfo**](SubAccountDetailsResponsePlanInfo.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SubAccountDetailsResponse.new(
  name: null,
  email: null,
  company_name: null,
  groups: null,
  plan_info: null
)
```

