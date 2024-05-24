# Brevo::UpdateSmtpTemplateSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the sender | [optional] |
| **email** | **String** | Email of the sender | [optional] |
| **id** | **Integer** | Select the sender for the template on the basis of sender id. _In order to select a sender with specific pool of IP’s, dedicated ip users shall pass id (instead of email)_.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateSmtpTemplateSender.new(
  name: Mary from MyShop,
  email: contact@myshop.com,
  id: 3
)
```

