# Brevo::GetExtendedContactDetailsAllOfStatisticsClicked

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **Integer** | ID of the campaign which generated the event |  |
| **links** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsLinks&gt;**](GetExtendedContactDetailsAllOfStatisticsLinks.md) | Listing of the clicked links for the campaign |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetExtendedContactDetailsAllOfStatisticsClicked.new(
  campaign_id: 3,
  links: null
)
```

