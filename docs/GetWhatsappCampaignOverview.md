# Brevo::GetWhatsappCampaignOverview

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the WhatsApp Campaign |  |
| **campaign_name** | **String** | Name of the WhatsApp Campaign |  |
| **campaign_status** | **String** | Status of the WhatsApp Campaign |  |
| **scheduled_at** | **String** | UTC date-time on which WhatsApp campaign is scheduled. Should be in YYYY-MM-DDTHH:mm:ss.SSSZ format | [optional] |
| **sender_number** | **String** | Sender of the WhatsApp Campaign |  |
| **stats** | [**WhatsappCampStats**](WhatsappCampStats.md) |  | [optional] |
| **template** | [**WhatsappCampTemplate**](WhatsappCampTemplate.md) |  |  |
| **created_at** | **String** | Creation UTC date-time of the WhatsApp campaign (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **String** | UTC date-time of last modification of the WhatsApp campaign (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetWhatsappCampaignOverview.new(
  id: 1672035851100690,
  campaign_name: Test Campaign,
  campaign_status: draft,
  scheduled_at: 2017-06-01T12:30:00Z,
  sender_number: 9368207029,
  stats: null,
  template: null,
  created_at: 2017-06-01T12:30:00Z,
  modified_at: 2017-05-01T12:30:00Z
)
```

