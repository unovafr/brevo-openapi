# Brevo::GetWhatsappTemplates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **templates** | [**Array&lt;GetWhatsappTemplatesTemplatesInner&gt;**](GetWhatsappTemplatesTemplatesInner.md) |  | [optional] |
| **count** | **Integer** | Number of WhatsApp templates retrieved | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetWhatsappTemplates.new(
  templates: null,
  count: 24
)
```

