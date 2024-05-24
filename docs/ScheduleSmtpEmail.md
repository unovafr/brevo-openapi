# Brevo::ScheduleSmtpEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** | Message ID of the transactional email scheduled | [optional] |
| **message_ids** | **Array&lt;String&gt;** |  | [optional] |
| **batch_id** | **String** | Batch ID of the batch transactional email scheduled | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::ScheduleSmtpEmail.new(
  message_id: &lt;201798300811.5787683@relay.domain.com&gt;,
  message_ids: null,
  batch_id: 5c6cfa04-eed9-42c2-8b5c-6d470d978e9d
)
```

