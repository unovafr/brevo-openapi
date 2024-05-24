# Brevo::SendSmtpEmailCcInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the recipient in cc |  |
| **name** | **String** | Name of the recipient in cc. **Maximum allowed characters are 70**.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SendSmtpEmailCcInner.new(
  email: ann6533@example.com,
  name: Ann
)
```

