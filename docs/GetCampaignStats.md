# Brevo::GetCampaignStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list_id** | **Integer** | List Id of email campaign (only in case of get email campaign(s)(not for global stats)) | [optional] |
| **unique_clicks** | **Integer** | Number of unique clicks for the campaign |  |
| **clickers** | **Integer** | Number of total clicks for the campaign |  |
| **complaints** | **Integer** | Number of complaints (Spam reports) for the campaign |  |
| **delivered** | **Integer** | Number of delivered emails for the campaign |  |
| **sent** | **Integer** | Number of sent emails for the campaign |  |
| **soft_bounces** | **Integer** | Number of softbounce for the campaign |  |
| **hard_bounces** | **Integer** | Number of harbounce for the campaign |  |
| **unique_views** | **Integer** | Number of unique openings for the campaign |  |
| **trackable_views** | **Integer** | Recipients without any privacy protection option enabled in their email client |  |
| **trackable_views_rate** | **Float** | Rate of recipients without any privacy protection option enabled in their email client | [optional] |
| **estimated_views** | **Integer** | Rate of recipients without any privacy protection option enabled in their email client, applied to all delivered emails | [optional] |
| **unsubscriptions** | **Integer** | Number of unsubscription for the campaign |  |
| **viewed** | **Integer** | Number of openings for the campaign |  |
| **deferred** | **Integer** | Number of deferred emails for the campaign | [optional] |
| **return_bounce** | **Integer** | Total number of non-delivered campaigns for a particular campaign id. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetCampaignStats.new(
  list_id: 2,
  unique_clicks: 2300,
  clickers: 2665,
  complaints: 1,
  delivered: 19765,
  sent: 19887,
  soft_bounces: 100,
  hard_bounces: 87,
  unique_views: 7779,
  trackable_views: 5661,
  trackable_views_rate: 23.45,
  estimated_views: 560,
  unsubscriptions: 2,
  viewed: 8999,
  deferred: 30,
  return_bounce: 5
)
```

