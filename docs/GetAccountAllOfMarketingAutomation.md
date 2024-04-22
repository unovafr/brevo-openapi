# Brevo::GetAccountAllOfMarketingAutomation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Marketing Automation Tracker ID | [optional] |
| **enabled** | **Boolean** | Status of Marketing Automation Plateform activation for your account (true&#x3D;enabled, false&#x3D;disabled) |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetAccountAllOfMarketingAutomation.new(
  key: iso05aopqych87ysy0jymf,
  enabled: false
)
```

