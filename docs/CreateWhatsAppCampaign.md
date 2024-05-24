# Brevo::CreateWhatsAppCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the WhatsApp campaign creation |  |
| **template_id** | **Integer** | Id of the WhatsApp template in **approved** state |  |
| **scheduled_at** | **String** | Sending UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ). **Prefer to pass your timezone in date-time format for accurate result.For example: **2017-06-01T12:30:00+02:00**  |  |
| **recipients** | [**CreateWhatsAppCampaignRecipients**](CreateWhatsAppCampaignRecipients.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateWhatsAppCampaign.new(
  name: Test Campaign,
  template_id: 19,
  scheduled_at: 2017-06-01T12:30:00+02:00,
  recipients: null
)
```

