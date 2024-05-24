# Brevo::GetInboundEmailEventsByUuid

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **received_at** | **Time** | Date when email was received on SMTP relay | [optional] |
| **delivered_at** | **Time** | Date when email was delivered successfully to client’s webhook | [optional] |
| **recipient** | **String** | Recipient’s email address | [optional] |
| **sender** | **String** | Sender’s email address | [optional] |
| **message_id** | **String** | Value of the Message-ID header. This will be present only after the processing is done. | [optional] |
| **subject** | **String** | Value of the Subject header. This will be present only after the processing is done.  | [optional] |
| **attachments** | [**Array&lt;GetInboundEmailEventsByUuidAttachmentsInner&gt;**](GetInboundEmailEventsByUuidAttachmentsInner.md) | List of attachments of the email. This will be present only after the processing is done. | [optional] |
| **logs** | [**Array&lt;GetInboundEmailEventsByUuidLogsInner&gt;**](GetInboundEmailEventsByUuidLogsInner.md) | List of events/logs that describe the lifecycle of the email on SIB platform | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetInboundEmailEventsByUuid.new(
  received_at: 2019-05-25T11:53:26Z,
  delivered_at: null,
  recipient: null,
  sender: null,
  message_id: null,
  subject: null,
  attachments: null,
  logs: null
)
```

