# Brevo::RemainingCreditModelReseller

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms** | **Float** | SMS Credits remaining for reseller account |  |
| **email** | **Float** | Email Credits remaining for reseller account |  |

## Example

```ruby
require 'brevo'

instance = Brevo::RemainingCreditModelReseller.new(
  sms: 12900.0,
  email: 2000000.0
)
```

