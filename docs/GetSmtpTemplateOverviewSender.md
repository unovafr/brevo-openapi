# Brevo::GetSmtpTemplateOverviewSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | From email for the template | [optional] |
| **email** | **String** | From email for the template | [optional] |
| **id** | **String** | Sender id of the template | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSmtpTemplateOverviewSender.new(
  name: Mary form MyShop,
  email: contact@myshop.fr,
  id: 43
)
```

