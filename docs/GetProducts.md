# Brevo::GetProducts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **products** | [**Array&lt;GetProductDetails&gt;**](GetProductDetails.md) |  |  |
| **count** | **Integer** | Number of products |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetProducts.new(
  products: null,
  count: 17655
)
```

