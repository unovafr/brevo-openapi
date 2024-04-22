# Brevo::UpdateSmsCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the campaign | [optional] |
| **sender** | **String** | Name of the sender. **The number of characters is limited to 11 for alphanumeric characters and 15 for numeric characters** | [optional] |
| **content** | **String** | Content of the message. The maximum characters used per SMS is 160, if used more than that, it will be counted as more than one SMS | [optional] |
| **recipients** | [**CreateSmsCampaignRecipients**](CreateSmsCampaignRecipients.md) |  | [optional] |
| **scheduled_at** | **Time** | UTC date-time on which the campaign has to run (YYYY-MM-DDTHH:mm:ss.SSSZ). Prefer to pass your timezone in date-time format for accurate result. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateSmsCampaign.new(
  name: Spring Promo Code,
  sender: MyShop,
  content: Get a discount by visiting our NY store and saying : Happy Spring!,
  recipients: null,
  scheduled_at: 2017-05-05T12:30+02:00
)
```

