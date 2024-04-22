# Brevo::CreateEmailCampaignSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Sender Name | [optional] |
| **email** | **String** | Sender email | [optional] |
| **id** | **Integer** | Select the sender for the campaign on the basis of sender id. In order to select a sender with specific pool of IP’s, dedicated ip users shall pass id (instead of email). | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateEmailCampaignSender.new(
  name: Mary from MyShop,
  email: newsletter@myshop.com,
  id: 3
)
```

