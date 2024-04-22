# Brevo::GetSmsCampaignStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delivered** | **Integer** | Number of delivered SMS |  |
| **sent** | **Integer** | Number of sent SMS |  |
| **processing** | **Integer** | Number of processing SMS |  |
| **soft_bounces** | **Integer** | Number of softbounced SMS |  |
| **hard_bounces** | **Integer** | Number of hardbounced SMS |  |
| **unsubscriptions** | **Integer** | Number of unsubscription SMS |  |
| **answered** | **Integer** | Number of replies to the SMS |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSmsCampaignStats.new(
  delivered: 2987,
  sent: 3000,
  processing: 0,
  soft_bounces: 3,
  hard_bounces: 1,
  unsubscriptions: 3,
  answered: 2
)
```

