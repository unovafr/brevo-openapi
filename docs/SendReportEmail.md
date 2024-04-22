# Brevo::SendReportEmail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **Array&lt;String&gt;** | Email addresses of the recipients |  |
| **body** | **String** | Custom text message to be presented in the report email. |  |

## Example

```ruby
require 'brevo'

instance = Brevo::SendReportEmail.new(
  to: null,
  body: Please find attached the report of our last email campaign.
)
```

