# Brevo::UpdateCouponCollection200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the collection |  |
| **name** | **String** | The name of the collection |  |
| **default_coupon** | **String** | The default coupon of the collection |  |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateCouponCollection200Response.new(
  id: 23befbae-1505-47a8-bd27-e30ef739f32c,
  name: SummerPromotions,
  default_coupon: 10 OFF
)
```

