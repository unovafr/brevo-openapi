# Brevo::CreateWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | URL of the webhook |  |
| **description** | **String** | Description of the webhook | [optional] |
| **events** | **Array&lt;String&gt;** | - Events triggering the webhook. Possible values for **Transactional** type webhook: #### &#x60;sent&#x60; OR &#x60;request&#x60;, &#x60;delivered&#x60;, &#x60;hardBounce&#x60;, &#x60;softBounce&#x60;, &#x60;blocked&#x60;, &#x60;spam&#x60;, &#x60;invalid&#x60;, &#x60;deferred&#x60;, &#x60;click&#x60;, &#x60;opened&#x60;, &#x60;uniqueOpened&#x60; and &#x60;unsubscribed&#x60; - Possible values for **Marketing** type webhook: #### &#x60;spam&#x60;, &#x60;opened&#x60;, &#x60;click&#x60;, &#x60;hardBounce&#x60;, &#x60;softBounce&#x60;, &#x60;unsubscribed&#x60;, &#x60;listAddition&#x60; &amp; &#x60;delivered&#x60; - Possible values for **Inbound** type webhook: #### &#x60;inboundEmailProcessed&#x60;  |  |
| **type** | **String** | Type of the webhook | [optional][default to &#39;transactional&#39;] |
| **domain** | **String** | Inbound domain of webhook, required in case of event type &#x60;inbound&#x60; | [optional] |
| **batched** | **Boolean** | Batching configuration of the webhook, we send batched webhooks if its true | [optional] |
| **auth** | **Object** | Authentication header to be send with the webhook requests | [optional] |
| **headers** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateWebhook.new(
  url: http://requestb.in/173lyyx1,
  description: Webhook triggered on unsubscription,
  events: null,
  type: marketing,
  domain: example.com,
  batched: true,
  auth: {&quot;type&quot;:&quot;bearer&quot;,&quot;token&quot;:&quot;test-auth-token1234&quot;},
  headers: null
)
```

