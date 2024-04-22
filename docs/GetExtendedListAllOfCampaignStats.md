# Brevo::GetExtendedListAllOfCampaignStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | ID of the campaign |  |
| **stats** | [**GetCampaignStats**](GetCampaignStats.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetExtendedListAllOfCampaignStats.new(
  campaign_id: 143,
  stats: null
)
```

