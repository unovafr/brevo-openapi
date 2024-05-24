# Brevo::CreateUpdateBatchProductsModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_count** | **Integer** | Number of the new created products | [optional] |
| **updated_count** | **Integer** | Number of the existing products updated | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateUpdateBatchProductsModel.new(
  created_count: 7,
  updated_count: 5
)
```

