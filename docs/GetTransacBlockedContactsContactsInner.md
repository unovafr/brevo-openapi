# Brevo::GetTransacBlockedContactsContactsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address of the blocked or unsubscribed contact |  |
| **sender_email** | **String** | Sender email address of the blocked or unsubscribed contact |  |
| **reason** | [**GetTransacBlockedContactsContactsInnerReason**](GetTransacBlockedContactsContactsInnerReason.md) |  |  |
| **blocked_at** | **Time** | Date when the contact was blocked or unsubscribed on |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetTransacBlockedContactsContactsInner.new(
  email: john.smith@example.com,
  sender_email: john.smith@example.com,
  reason: null,
  blocked_at: 2017-05-01T12:30Z
)
```

