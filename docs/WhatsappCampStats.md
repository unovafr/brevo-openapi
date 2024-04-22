# Brevo::WhatsappCampStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sent** | **Integer** |  |  |
| **delivered** | **Integer** |  |  |
| **read** | **Integer** |  |  |
| **unsubscribe** | **Integer** |  |  |
| **not_sent** | **Integer** |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::WhatsappCampStats.new(
  sent: 3,
  delivered: 3,
  read: 2,
  unsubscribe: 0,
  not_sent: 4
)
```

