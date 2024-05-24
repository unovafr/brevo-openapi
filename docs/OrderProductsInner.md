# Brevo::OrderProductsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | ID of the product. |  |
| **quantity** | **Float** | How many pieces of the product the visitor has added to the cart. |  |
| **variant_id** | **String** | Product ID of the red color shirts. | [optional] |
| **price** | **Float** | The price of a unit of product |  |

## Example

```ruby
require 'brevo'

instance = Brevo::OrderProductsInner.new(
  product_id: P1,
  quantity: 10,
  variant_id: P100,
  price: 99.99
)
```

