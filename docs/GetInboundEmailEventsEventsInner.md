# Brevo::GetInboundEmailEventsEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uuid** | **String** | UUID that can be used to fetch additional data |  |
| **date** | **Time** | Date when email was received on SMTP relay |  |
| **sender** | **String** | Sender’s email address |  |
| **recipient** | **String** | Recipient’s email address |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetInboundEmailEventsEventsInner.new(
  uuid: null,
  date: null,
  sender: null,
  recipient: null
)
```

