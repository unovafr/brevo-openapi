# Brevo::GetTransacBlockedContacts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Count of blocked or unsubscribed contact | [optional] |
| **contacts** | [**Array&lt;GetTransacBlockedContactsContactsInner&gt;**](GetTransacBlockedContactsContactsInner.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetTransacBlockedContacts.new(
  count: 1,
  contacts: null
)
```

