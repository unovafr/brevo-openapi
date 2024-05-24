# Brevo::GetListsListsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the list |  |
| **name** | **String** | Name of the list |  |
| **total_blacklisted** | **Integer** | Number of blacklisted contacts in the list |  |
| **total_subscribers** | **Integer** | Number of contacts in the list |  |
| **unique_subscribers** | **Integer** | Number of unique contacts in the list |  |
| **folder_id** | **Integer** | ID of the folder |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetListsListsInner.new(
  id: 23,
  name: Magento Customers - EN,
  total_blacklisted: 13,
  total_subscribers: 1776,
  unique_subscribers: 1789,
  folder_id: 2
)
```

