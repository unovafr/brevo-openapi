# Brevo::GetContactCampaignStatsClickedInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | ID of the campaign which generated the event |  |
| **links** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsLinks&gt;**](GetExtendedContactDetailsAllOfStatisticsLinks.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetContactCampaignStatsClickedInner.new(
  campaign_id: 3,
  links: null
)
```

