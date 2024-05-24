# Brevo::EmailExportRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notify_url** | **String** | Webhook called once the export process is finished. For reference, https://help.brevo.com/hc/en-us/articles/360007666479 | [optional] |
| **recipients_type** | **String** | Type of recipients to export for a campaign |  |

## Example

```ruby
require 'brevo'

instance = Brevo::EmailExportRecipients.new(
  notify_url: http://requestb.in/173lyyx1,
  recipients_type: openers
)
```

