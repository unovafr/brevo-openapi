# Brevo::UpdateWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL of the webhook | [optional] |
| **description** | **String** | Description of the webhook | [optional] |
| **events** | **Array&lt;String&gt;** | Events triggering the webhook. Possible values for Transactional type webhook – &#x60;sent&#x60; OR &#x60;request&#x60;, &#x60;delivered&#x60;, &#x60;hardBounce&#x60;, &#x60;softBounce&#x60;, &#x60;blocked&#x60;, &#x60;spam&#x60;, &#x60;invalid&#x60;, &#x60;deferred&#x60;, &#x60;click&#x60;, &#x60;opened&#x60;, &#x60;uniqueOpened&#x60; and &#x60;unsubscribed&#x60; and possible values for Marketing type webhook – &#x60;spam&#x60;, &#x60;opened&#x60;, &#x60;click&#x60;, &#x60;hardBounce&#x60;, &#x60;softBounce&#x60;, &#x60;unsubscribed&#x60;, &#x60;listAddition&#x60; and &#x60;delivered&#x60; | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateWebhook.new(
  url: http://requestb.in/173lyyx1,
  description: Webhook triggered on contact hardbounce,
  events: null
)
```

