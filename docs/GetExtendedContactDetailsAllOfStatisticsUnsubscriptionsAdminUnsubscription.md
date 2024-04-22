# Brevo::GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsAdminUnsubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_time** | **Time** | UTC date-time of the event |  |
| **ip** | **String** | IP from which the user has been unsubscribed | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsAdminUnsubscription.new(
  event_time: 2017-03-12T20:15:13Z,
  ip: 165.87.3.15
)
```

