# Brevo::UpdateUserResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Status of the API operation. |  |
| **credit_notes** | **Array&lt;String&gt;** | Credit note | [optional] |
| **invoice_id** | **Array&lt;String&gt;** | Invoice id | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateUserResponse.new(
  status: OK,
  credit_notes: null,
  invoice_id: null
)
```

