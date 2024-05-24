# Brevo::AddCredits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms** | **Integer** | **Required if email credits are empty.** SMS credits to be added to the child account  | [optional] |
| **email** | **Integer** | **Required if sms credits are empty.** Email credits to be added to the child account  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::AddCredits.new(
  sms: 450,
  email: 1200
)
```

