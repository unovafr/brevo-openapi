# Brevo::RequestSmsRecipientExport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notify_url** | **String** | URL that will be called once the export process is finished. For reference, https://help.brevo.com/hc/en-us/articles/360007666479 | [optional] |
| **recipients_type** | **String** | Filter the recipients based on how they interacted with the campaign |  |

## Example

```ruby
require 'brevo'

instance = Brevo::RequestSmsRecipientExport.new(
  notify_url: http://requestb.in/173lyyx1,
  recipients_type: answered
)
```

