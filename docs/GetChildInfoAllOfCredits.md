# Brevo::GetChildInfoAllOfCredits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_credits** | **Integer** | Email credits available for your child | [optional] |
| **sms_credits** | **Integer** | SMS credits available for your child | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetChildInfoAllOfCredits.new(
  email_credits: 98555,
  sms_credits: 87556
)
```

