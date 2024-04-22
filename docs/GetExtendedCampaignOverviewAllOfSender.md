# Brevo::GetExtendedCampaignOverviewAllOfSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Sender name of the campaign | [optional] |
| **email** | **String** | Sender email of the campaign | [optional] |
| **id** | **Integer** | Sender id of the campaign | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetExtendedCampaignOverviewAllOfSender.new(
  name: Marketing,
  email: marketing@mycompany.com,
  id: 43
)
```

