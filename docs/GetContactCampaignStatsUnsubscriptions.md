# Brevo::GetContactCampaignStatsUnsubscriptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_unsubscription** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsUserUnsubscription&gt;**](GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsUserUnsubscription.md) | Contact has unsubscribed via the unsubscription link in the email |  |
| **admin_unsubscription** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsAdminUnsubscription&gt;**](GetExtendedContactDetailsAllOfStatisticsUnsubscriptionsAdminUnsubscription.md) | Contact has been unsubscribed from the administrator |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetContactCampaignStatsUnsubscriptions.new(
  user_unsubscription: null,
  admin_unsubscription: null
)
```

