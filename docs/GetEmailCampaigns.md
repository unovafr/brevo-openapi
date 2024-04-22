# Brevo::GetEmailCampaigns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns** | [**Array&lt;GetEmailCampaignsCampaignsInner&gt;**](GetEmailCampaignsCampaignsInner.md) |  | [optional] |
| **count** | **Integer** | Number of Email campaigns retrieved |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetEmailCampaigns.new(
  campaigns: null,
  count: 24
)
```

