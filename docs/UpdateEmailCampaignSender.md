# Brevo::UpdateEmailCampaignSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Sender Name from which the campaign emails are sent | [optional] |
| **email** | **String** | Sender email from which the campaign emails are sent | [optional] |
| **id** | **Integer** | Select the sender for the campaign on the basis of sender id. **In order to select a sender with specific pool of IP’s, dedicated ip users shall pass id (instead of email)**.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateEmailCampaignSender.new(
  name: Mary from MyShop,
  email: newsletter@myshop.com,
  id: 3
)
```

