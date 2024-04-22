# Brevo::GetSendersList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **senders** | [**Array&lt;GetSendersListSendersInner&gt;**](GetSendersListSendersInner.md) | List of the senders available in your account | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSendersList.new(
  senders: null
)
```

