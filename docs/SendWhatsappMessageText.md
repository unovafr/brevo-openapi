# Brevo::SendWhatsappMessageText

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **text** | **String** | Text to be sent as message body (will be overridden if templateId is passed in the same request) |  |
| **contact_numbers** | **Array&lt;String&gt;** | List of phone numbers of the contacts |  |

## Example

```ruby
require 'brevo'

instance = Brevo::SendWhatsappMessageText.new(
  sender_number: 919876543210,
  text: Hi! There i am a message,
  contact_numbers: null
)
```

