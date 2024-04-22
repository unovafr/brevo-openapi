# Brevo::GetTransacEmailContentEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the event that occurred on the sent email |  |
| **time** | **Time** | Time at which the event occurred |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetTransacEmailContentEventsInner.new(
  name: delivered,
  time: 2017-03-12T12:30Z
)
```

