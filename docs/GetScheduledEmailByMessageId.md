# Brevo::GetScheduledEmailByMessageId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scheduled_at** | **Time** | Datetime for which the email was scheduled |  |
| **created_at** | **Time** | Datetime on which the email was scheduled |  |
| **status** | **String** | Current status of the scheduled email |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetScheduledEmailByMessageId.new(
  scheduled_at: null,
  created_at: null,
  status: null
)
```

