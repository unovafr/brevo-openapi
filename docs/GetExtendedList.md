# Brevo::GetExtendedList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the list |  |
| **name** | **String** | Name of the list |  |
| **total_blacklisted** | **Integer** | Number of blacklisted contacts in the list |  |
| **total_subscribers** | **Integer** | Number of contacts in the list |  |
| **folder_id** | **Integer** | ID of the folder |  |
| **created_at** | **Time** | Creation UTC date-time of the list (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **campaign_stats** | [**Array&lt;GetExtendedListAllOfCampaignStats&gt;**](GetExtendedListAllOfCampaignStats.md) |  | [optional] |
| **dynamic_list** | **Boolean** | Status telling if the list is dynamic or not (true&#x3D;dynamic, false&#x3D;not dynamic) | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetExtendedList.new(
  id: 23,
  name: Magento Customers - EN,
  total_blacklisted: 13,
  total_subscribers: 1776,
  folder_id: 2,
  created_at: 2017-03-13T17:05:09Z,
  campaign_stats: null,
  dynamic_list: false
)
```

