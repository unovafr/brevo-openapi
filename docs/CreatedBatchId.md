# Brevo::CreatedBatchId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **Float** | Batch ID of the request |  |
| **count** | **Integer** | Number of orders | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreatedBatchId.new(
  batch_id: 1,
  count: 17655
)
```

