# Brevo::GetEmailEventReportEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | Email address which generates the event |  |
| **date** | **Time** | UTC date-time on which the event has been generated |  |
| **subject** | **String** | Subject of the event | [optional] |
| **message_id** | **String** | Message ID which generated the event |  |
| **event** | **String** | Event which occurred |  |
| **reason** | **String** | Reason of bounce (only available if the event is hardbounce or softbounce) | [optional] |
| **tag** | **String** | Tag of the email which generated the event | [optional] |
| **ip** | **String** | IP from which the user has opened the email or clicked on the link (only available if the event is opened or clicks) | [optional] |
| **link** | **String** | The link which is sent to the user (only available if the event is requests or opened or clicks) | [optional] |
| **from** | **String** | Sender email from which the emails are sent | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetEmailEventReportEventsInner.new(
  email: john.smith@example.com,
  date: 2017-03-12T12:30Z,
  subject: Sib client test,
  message_id: &lt;201798300811.5787683@relay.domain.com&gt;,
  event: delivered,
  reason: Error connection timeout,
  tag: OrderConfirmation,
  ip: 165.87.3.15,
  link: https://www.someexamplelink.com,
  from: john@example.com
)
```

