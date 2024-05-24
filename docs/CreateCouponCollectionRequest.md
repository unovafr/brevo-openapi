# Brevo::CreateCouponCollectionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the coupons collection |  |
| **default_coupon** | **String** | Default coupons collection name |  |
| **expiration_date** | **Time** | Specify an expiration date for the coupon collection in RFC3339 format. Use null to remove the expiration date. | [optional] |
| **remaining_days_alert** | **Integer** | Send a notification alert (email) when the remaining days until the expiration date are equal or fall bellow this number. Use null to disable alerts. | [optional] |
| **remaining_coupons_alert** | **Integer** | Send a notification alert (email) when the remaining coupons count is equal or fall bellow this number. Use null to disable alerts. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateCouponCollectionRequest.new(
  name: 10%OFF,
  default_coupon: Winter,
  expiration_date: 2022-01-02T00:00Z,
  remaining_days_alert: 5,
  remaining_coupons_alert: 5
)
```

