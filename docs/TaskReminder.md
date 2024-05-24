# Brevo::TaskReminder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **Integer** | Value of time unit before reminder is to be sent |  |
| **unit** | **String** | Unit of time before reminder is to be sent |  |
| **types** | **Array&lt;String&gt;** | Type of task reminder e.g email, push |  |

## Example

```ruby
require 'brevo'

instance = Brevo::TaskReminder.new(
  value: 10,
  unit: null,
  types: [&quot;email&quot;]
)
```

