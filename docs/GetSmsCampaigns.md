# Brevo::GetSmsCampaigns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns** | [**Array&lt;GetSmsCampaignsCampaignsInner&gt;**](GetSmsCampaignsCampaignsInner.md) |  | [optional] |
| **count** | **Integer** | Number of SMS campaigns retrieved |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSmsCampaigns.new(
  campaigns: null,
  count: 12
)
```

