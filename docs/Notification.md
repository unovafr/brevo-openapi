# Brevo::Notification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel** | **String** | Channel used to send the notifications.  |  |
| **text** | **String** | Use this field if you want to give more context to your contact about the payment request.  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::Notification.new(
  channel: email,
  text: Please pay for your yoga class.
)
```

