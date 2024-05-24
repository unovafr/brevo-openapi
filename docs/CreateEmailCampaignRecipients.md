# Brevo::CreateEmailCampaignRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exclusion_list_ids** | **Array&lt;Integer&gt;** | List ids to exclude from the campaign | [optional] |
| **list_ids** | **Array&lt;Integer&gt;** | **Mandatory if scheduledAt is not empty**. List Ids to send the campaign to  | [optional] |
| **segment_ids** | **Array&lt;Integer&gt;** | **Mandatory if listIds are not used**. Segment ids to send the campaign to.  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateEmailCampaignRecipients.new(
  exclusion_list_ids: null,
  list_ids: null,
  segment_ids: null
)
```

