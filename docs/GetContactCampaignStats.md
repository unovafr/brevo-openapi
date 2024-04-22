# Brevo::GetContactCampaignStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messages_sent** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsMessagesSent&gt;**](GetExtendedContactDetailsAllOfStatisticsMessagesSent.md) |  | [optional] |
| **hard_bounces** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsMessagesSent&gt;**](GetExtendedContactDetailsAllOfStatisticsMessagesSent.md) |  | [optional] |
| **soft_bounces** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsMessagesSent&gt;**](GetExtendedContactDetailsAllOfStatisticsMessagesSent.md) |  | [optional] |
| **complaints** | [**Array&lt;GetExtendedContactDetailsAllOfStatisticsMessagesSent&gt;**](GetExtendedContactDetailsAllOfStatisticsMessagesSent.md) |  | [optional] |
| **unsubscriptions** | [**GetContactCampaignStatsUnsubscriptions**](GetContactCampaignStatsUnsubscriptions.md) |  | [optional] |
| **opened** | [**Array&lt;GetContactCampaignStatsOpenedInner&gt;**](GetContactCampaignStatsOpenedInner.md) |  | [optional] |
| **clicked** | [**Array&lt;GetContactCampaignStatsClickedInner&gt;**](GetContactCampaignStatsClickedInner.md) |  | [optional] |
| **transac_attributes** | [**Array&lt;GetContactCampaignStatsTransacAttributesInner&gt;**](GetContactCampaignStatsTransacAttributesInner.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetContactCampaignStats.new(
  messages_sent: null,
  hard_bounces: null,
  soft_bounces: null,
  complaints: null,
  unsubscriptions: null,
  opened: null,
  clicked: null,
  transac_attributes: null
)
```

