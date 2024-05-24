# Brevo::CreateUpdateBatchProducts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products** | [**Array&lt;CreateUpdateProducts&gt;**](CreateUpdateProducts.md) | array of products objects |  |
| **update_enabled** | **Boolean** | Facilitate to update the existing categories in the same request (updateEnabled &#x3D; true) | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateUpdateBatchProducts.new(
  products: null,
  update_enabled: null
)
```

