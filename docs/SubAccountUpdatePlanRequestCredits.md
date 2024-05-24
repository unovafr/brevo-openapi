# Brevo::SubAccountUpdatePlanRequestCredits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **Integer** | Number of email credits | [optional] |
| **sms** | **Float** | Number of SMS credits | available in ENT-v2 only | [optional] |
| **wp_subscribers** | **Integer** | Number of Push credits, possible value is 0 and -1 | available in ENT-v2 only | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SubAccountUpdatePlanRequestCredits.new(
  email: null,
  sms: null,
  wp_subscribers: null
)
```

