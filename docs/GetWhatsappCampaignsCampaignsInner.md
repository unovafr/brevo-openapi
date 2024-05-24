# Brevo::GetWhatsappCampaignsCampaignsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the WhatsApp Campaign |  |
| **campaign_name** | **String** | Name of the WhatsApp Campaign |  |
| **template_id** | **String** | Id of the WhatsApp template |  |
| **campaign_status** | **String** | Status of the WhatsApp Campaign |  |
| **scheduled_at** | **String** | UTC date-time on which WhatsApp campaign is scheduled. Should be in YYYY-MM-DDTHH:mm:ss.SSSZ format |  |
| **error_reason** | **String** | Error Reason associated with the WhatsApp campaign sending | [optional] |
| **invalidated_contacts** | **Integer** | Count of invalidated contacts | [optional] |
| **read_percentage** | **Float** | Read percentage of the the WhatsApp campaign created | [optional] |
| **stats** | [**WhatsappCampStats**](WhatsappCampStats.md) |  | [optional] |
| **created_at** | **String** | Creation UTC date-time of the WhatsApp template (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **String** | UTC date-time of last modification of the WhatsApp template (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetWhatsappCampaignsCampaignsInner.new(
  id: 1672035851100690,
  campaign_name: Test Campaign,
  template_id: 637660278078655,
  campaign_status: draft,
  scheduled_at: 2017-06-01T12:30:00Z,
  error_reason: null,
  invalidated_contacts: 0,
  read_percentage: 28.57,
  stats: null,
  created_at: 2017-06-01T12:30:00Z,
  modified_at: 2017-05-01T12:30:00Z
)
```

