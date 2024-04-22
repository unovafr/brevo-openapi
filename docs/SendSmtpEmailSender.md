# Brevo::SendSmtpEmailSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the sender from which the emails will be sent. Maximum allowed characters are 70. | [optional] |
| **email** | **String** | Email of the sender from which the emails will be sent |  |

## Example

```ruby
require 'brevo'

instance = Brevo::SendSmtpEmailSender.new(
  name: Mary from MyShop,
  email: no-reply@myshop.com
)
```

