# Brevo::EventIdentifiers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_id** | **String** | Email Id associated with the event | [optional] |
| **phone_id** | **String** | SMS associated with the event | [optional] |
| **whatsapp_id** | **String** | whatsapp associated with the event | [optional] |
| **landline_number_id** | **String** | landline_number associated with the event | [optional] |
| **ext_id** | **String** | ext_id associated with the event | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::EventIdentifiers.new(
  email_id: jane.doe@example.com,
  phone_id: +91xxxxxxxxxx,
  whatsapp_id: +91xxxxxxxxxx,
  landline_number_id: +91xxxxxxxxxx,
  ext_id: abc123
)
```

