# Brevo::GetScheduledEmailByBatchIdBatchesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scheduled_at** | **Time** | Datetime for which the batch was scheduled |  |
| **created_at** | **Time** | Datetime on which the batch was scheduled |  |
| **status** | **String** | Current status of the scheduled batch |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetScheduledEmailByBatchIdBatchesInner.new(
  scheduled_at: null,
  created_at: null,
  status: null
)
```

