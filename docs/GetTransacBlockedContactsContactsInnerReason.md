# Brevo::GetTransacBlockedContactsContactsInnerReason

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Reason code for blocking / unsubscribing (This code is safe for comparison) | [optional] |
| **message** | **String** | Reason for blocking / unsubscribing (This string is not safe for comparison) | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetTransacBlockedContactsContactsInnerReason.new(
  code: AdminBlocked,
  message: Admin blocked
)
```

