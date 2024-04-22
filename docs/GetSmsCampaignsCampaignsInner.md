# Brevo::GetSmsCampaignsCampaignsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the SMS Campaign |  |
| **name** | **String** | Name of the SMS Campaign |  |
| **status** | **String** | Status of the SMS Campaign |  |
| **content** | **String** | Content of the SMS Campaign |  |
| **scheduled_at** | **Time** | UTC date-time on which SMS campaign is scheduled. Should be in YYYY-MM-DDTHH:mm:ss.SSSZ format |  |
| **sender** | **String** | Sender of the SMS Campaign |  |
| **created_at** | **Time** | Creation UTC date-time of the SMS campaign (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **Time** | UTC date-time of last modification of the SMS campaign (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **recipients** | [**GetCampaignRecipients**](GetCampaignRecipients.md) |  |  |
| **statistics** | [**GetSmsCampaignStats**](GetSmsCampaignStats.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSmsCampaignsCampaignsInner.new(
  id: 2,
  name: PROMO CODE,
  status: draft,
  content: Visit our Store and get some discount !,
  scheduled_at: 2017-06-01T12:30Z,
  sender: MyCompany,
  created_at: 2017-06-01T12:30Z,
  modified_at: 2017-05-01T12:30Z,
  recipients: null,
  statistics: null
)
```

