# Brevo::GetWhatsappEventReportEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |
| **date** | **String** | UTC date-time on which the event has been generated |  |
| **message_id** | **String** | Message ID which generated the event |  |
| **event** | **String** | Event which occurred |  |
| **reason** | **String** | Reason for the event (will be there in case of &#x60;error&#x60; and &#x60;soft-bounce&#x60; events) | [optional] |
| **body** | **String** | Text of the reply (will be there only in case of &#x60;reply&#x60; event with text) | [optional] |
| **media_url** | **String** | Url of the media reply (will be there only in case of &#x60;reply&#x60; event with media) | [optional] |
| **sender_number** | **String** | WhatsApp Number with country code. Example, 85264318721 |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetWhatsappEventReportEventsInner.new(
  contact_number: 919876543210,
  date: 2017-03-12T12:30:00Z,
  message_id: 23befbae-1505-47a8-bd27-e30ef739f32c,
  event: delivered,
  reason: 23befbae-1505-47a8-bd27-e30ef739f32c,
  body: Hi! I am a reply,
  media_url: https://example.com/media.png,
  sender_number: 919876543210
)
```

