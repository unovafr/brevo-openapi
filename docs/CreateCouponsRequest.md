# Brevo::CreateCouponsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | The id of the coupon collection for which the coupons will be created |  |
| **coupons** | **Array&lt;String&gt;** |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateCouponsRequest.new(
  collection_id: 23befbae-1505-47a8-bd27-e30ef739f32c,
  coupons: null
)
```

