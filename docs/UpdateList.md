# Brevo::UpdateList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the list. Either of the two parameters (name, folderId) can be updated at a time. | [optional] |
| **folder_id** | **Integer** | Id of the folder in which the list is to be moved. Either of the two parameters (name, folderId) can be updated at a time. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::UpdateList.new(
  name: Magento Customer - ES,
  folder_id: 2
)
```

