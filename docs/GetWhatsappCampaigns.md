# Brevo::GetWhatsappCampaigns

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaigns** | [**Array&lt;GetWhatsappCampaignsCampaignsInner&gt;**](GetWhatsappCampaignsCampaignsInner.md) |  | [optional] |
| **count** | **Integer** | Number of WhatsApp campaigns retrieved | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetWhatsappCampaigns.new(
  campaigns: null,
  count: 40
)
```

