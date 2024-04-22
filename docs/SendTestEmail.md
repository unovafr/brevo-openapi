# Brevo::SendTestEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_to** | **Array&lt;String&gt;** | List of the email addresses of the recipients whom you wish to send the test mail. If left empty, the test mail will be sent to your entire test list. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SendTestEmail.new(
  email_to: null
)
```

