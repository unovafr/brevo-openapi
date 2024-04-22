# Brevo::GetSmtpTemplates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Count of transactional email templates | [optional] |
| **templates** | [**Array&lt;GetSmtpTemplateOverview&gt;**](GetSmtpTemplateOverview.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSmtpTemplates.new(
  count: 1,
  templates: null
)
```

