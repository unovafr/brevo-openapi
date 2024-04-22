# Brevo::GetSmsEventReportEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Phone number which has generated the event |  |
| **date** | **Time** | UTC date-time on which the event has been generated |  |
| **message_id** | **String** | Message ID which generated the event |  |
| **event** | **String** | Event which occurred |  |
| **reason** | **String** | Reason of bounce (only available if the event is hardbounce or softbounce) | [optional] |
| **reply** | **String** |  | [optional] |
| **tag** | **String** | Tag of the SMS which generated the event | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSmsEventReportEventsInner.new(
  phone_number: 00189001094,
  date: 2017-03-12T12:30Z,
  message_id: 1472640582425378,
  event: accepted,
  reason: Message is undeliverable due to an incorrect / invalid / blacklisted / permanently barred MSISDN for this operator,
  reply: null,
  tag: CabWaiting
)
```

