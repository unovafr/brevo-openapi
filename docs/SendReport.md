# Brevo::SendReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language** | **String** | Language of email content for campaign report sending. | [optional][default to &#39;fr&#39;] |
| **email** | [**SendReportEmail**](SendReportEmail.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::SendReport.new(
  language: en,
  email: null
)
```

