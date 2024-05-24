# Brevo::GetExtendedContactDetailsAllOfStatisticsMessagesSent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | ID of the campaign which generated the event |  |
| **event_time** | **String** | UTC date-time of the event |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetExtendedContactDetailsAllOfStatisticsMessagesSent.new(
  campaign_id: 3,
  event_time: 2017-03-12T20:15:13Z
)
```

