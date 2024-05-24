# Brevo::GetWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL of the webhook |  |
| **id** | **Integer** | ID of the webhook |  |
| **description** | **String** | Description of the webhook |  |
| **events** | **Array&lt;String&gt;** |  |  |
| **type** | **String** | Type of webhook (marketing or transactional) |  |
| **created_at** | **String** | Creation UTC date-time of the webhook (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **String** | Last modification UTC date-time of the webhook (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **batched** | **Boolean** | Batching configuration of the webhook, we send batched webhooks if its true | [optional] |
| **auth** | **Object** | Authentication header to be send with the webhook requests | [optional] |
| **headers** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetWebhook.new(
  url: http://requestb.in/173lyyx1,
  id: 654,
  description: Webhook triggered on campaign openings,
  events: null,
  type: marketing,
  created_at: 2016-12-01T12:50:00Z,
  modified_at: 2017-05-12T13:15:00Z,
  batched: true,
  auth: {&quot;type&quot;:&quot;bearer&quot;,&quot;token&quot;:&quot;test-auth-token1234&quot;},
  headers: null
)
```

