# Brevo::SendSmtpEmailToInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the recipient |  |
| **name** | **String** | Name of the recipient. **Maximum allowed characters are 70**.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SendSmtpEmailToInner.new(
  email: jimmy98@example.com,
  name: Jimmy
)
```

