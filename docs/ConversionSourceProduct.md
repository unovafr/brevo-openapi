# Brevo::ConversionSourceProduct

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  | [optional] |
| **sku** | **String** |  | [optional] |
| **price** | **Float** |  | [optional] |
| **url** | **String** |  | [optional] |
| **image_url** | **String** |  | [optional] |
| **orders_count** | **Integer** |  | [optional] |
| **revenue** | **Float** |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::ConversionSourceProduct.new(
  id: 1,
  name: Milky Way Galaxy,
  sku: sku-1,
  price: 1000.0,
  url: https://mydomain.com/products/alpina-panoma-classic,
  image_url: http://mydomain.com/product-absoulte-url/img.jpeg,
  orders_count: 200,
  revenue: 999.99
)
```

