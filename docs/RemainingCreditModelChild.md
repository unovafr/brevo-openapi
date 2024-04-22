# Brevo::RemainingCreditModelChild

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms** | **Float** | SMS Credits remaining for child account |  |
| **email** | **Float** | Email Credits remaining for child account |  |

## Example

```ruby
require 'brevo'

instance = Brevo::RemainingCreditModelChild.new(
  sms: 500.0,
  email: 2000.0
)
```

