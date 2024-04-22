# Brevo::GetContactCampaignStatsTransacAttributesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_date** | **Date** | Date of the order |  |
| **order_price** | **Float** | Price of the order |  |
| **order_id** | **Integer** | ID of the order |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetContactCampaignStatsTransacAttributesInner.new(
  order_date: Sun Mar 12 01:00:00 CET 2017,
  order_price: 24.99,
  order_id: 248
)
```

