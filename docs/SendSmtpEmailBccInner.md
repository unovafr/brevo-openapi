# Brevo::SendSmtpEmailBccInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the recipient in bcc |  |
| **name** | **String** | Name of the recipient in bcc. Maximum allowed characters are 70. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SendSmtpEmailBccInner.new(
  email: helen9766@example.com,
  name: Helen
)
```

