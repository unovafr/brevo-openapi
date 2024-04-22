# Brevo::GetWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL of the webhook |  |
| **id** | **Integer** | ID of the webhook |  |
| **description** | **String** | Description of the webhook |  |
| **events** | **Array&lt;String&gt;** |  |  |
| **type** | **String** | Type of webhook (marketing or transac) |  |
| **created_at** | **Time** | Creation UTC date-time of the webhook (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **Time** | Last modification UTC date-time of the webhook (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetWebhook.new(
  url: http://requestb.in/173lyyx1,
  id: 654,
  description: Webhook triggered on campaign openings,
  events: null,
  type: marketing,
  created_at: 2016-12-01T12:50Z,
  modified_at: 2017-05-12T13:15Z
)
```

