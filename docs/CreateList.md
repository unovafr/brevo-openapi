# Brevo::CreateList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the list |  |
| **folder_id** | **Integer** | Id of the parent folder in which this list is to be created |  |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateList.new(
  name: Magento Customer - ES,
  folder_id: 2
)
```

