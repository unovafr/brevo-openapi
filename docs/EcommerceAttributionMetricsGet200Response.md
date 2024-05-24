# Brevo::EcommerceAttributionMetricsGet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **results** | [**Array&lt;ConversionSourceMetrics&gt;**](ConversionSourceMetrics.md) | List of conversion attribution metrics |  |
| **totals** | [**EcommerceAttributionMetricsGet200ResponseTotals**](EcommerceAttributionMetricsGet200ResponseTotals.md) |  |  |

## Example

```ruby
require 'brevo'

instance = Brevo::EcommerceAttributionMetricsGet200Response.new(
  results: [{&quot;id&quot;:2,&quot;conversionSource&quot;:&quot;email_campaign&quot;,&quot;ordersCount&quot;:300,&quot;revenue&quot;:900,&quot;averageBasket&quot;:3.0},{&quot;id&quot;:1,&quot;conversionSource&quot;:&quot;email_campaign&quot;,&quot;ordersCount&quot;:200,&quot;revenue&quot;:800,&quot;averageBasket&quot;:4.0}],
  totals: null
)
```

