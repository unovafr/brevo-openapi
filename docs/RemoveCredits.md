# Brevo::RemoveCredits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sms** | **Integer** | **Required if email credits are empty.** SMS credits to be removed from the child account  | [optional] |
| **email** | **Integer** | **Required if sms credits are empty.** Email credits to be removed from the child account  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::RemoveCredits.new(
  sms: 300,
  email: 500
)
```

