# Brevo::GetCouponCollection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the collection. |  |
| **name** | **String** | The name of the collection. |  |
| **default_coupon** | **String** | The default coupon of the collection. |  |
| **created_at** | **Time** | Datetime on which the collection was created. |  |
| **total_coupons** | **Integer** | Total number of coupons in the collection. |  |
| **remaining_coupons** | **Integer** | Number of coupons that have not been sent yet. |  |
| **expiration_date** | **Time** | Expiration date for the coupon collection in RFC3339 format. | [optional] |
| **remaining_days_alert** | **Integer** | If present, an email notification is going to be sent the defined amount of days before to the expiration date. | [optional] |
| **remaining_coupons_alert** | **Integer** | If present, an email notification is going to be sent when the total number of available coupons falls below the defined threshold. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetCouponCollection.new(
  id: 23befbae-1505-47a8-bd27-e30ef739f32c,
  name: SummerPromotions,
  default_coupon: 10 OFF,
  created_at: 2023-01-06T05:03:47.053Z,
  total_coupons: 10000,
  remaining_coupons: 5000,
  expiration_date: 2024-01-01T00:00Z,
  remaining_days_alert: 5,
  remaining_coupons_alert: 5
)
```

