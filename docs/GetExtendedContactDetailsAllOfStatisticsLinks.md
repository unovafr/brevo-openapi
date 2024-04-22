# Brevo::GetExtendedContactDetailsAllOfStatisticsLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Number of clicks on this link for the campaign |  |
| **event_time** | **Time** | UTC date-time of the event |  |
| **ip** | **String** | IP from which the user has clicked on the link |  |
| **url** | **String** | URL of the clicked link |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetExtendedContactDetailsAllOfStatisticsLinks.new(
  count: 1,
  event_time: 2017-03-12T20:15:13Z,
  ip: 165.87.3.15,
  url: www.myshop.com
)
```

