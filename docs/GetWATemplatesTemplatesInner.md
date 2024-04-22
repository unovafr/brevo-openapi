# Brevo::GetWATemplatesTemplatesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id of the template |  |
| **name** | **String** | Name of the WhatsApp template |  |
| **status** | **String** | Status of the WhatsApp template |  |
| **language** | **String** | Language in which template exists |  |
| **category** | **String** | category of the template |  |
| **error_reason** | **String** | Error reason in the template creation | [optional] |
| **created_at** | **String** | Creation UTC date-time of the whatsApp template (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **String** | UTC date-time of last modification of the whatsApp template (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetWATemplatesTemplatesInner.new(
  id: 235,
  name: Test template,
  status: approved,
  language: en,
  category: MARKETING,
  error_reason: NONE,
  created_at: 2017-06-01T12:30:00Z,
  modified_at: 2017-05-01T12:30:00Z
)
```

