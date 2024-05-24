# Brevo::InviteuserResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Status of the API operation. |  |
| **invoice_id** | **Array&lt;String&gt;** | Invoice id | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::InviteuserResponse.new(
  status: OK,
  invoice_id: null
)
```

