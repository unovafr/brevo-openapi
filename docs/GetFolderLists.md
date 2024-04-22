# Brevo::GetFolderLists

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lists** | [**Array&lt;GetList&gt;**](GetList.md) |  |  |
| **count** | **Integer** | Number of lists in the folder |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetFolderLists.new(
  lists: null,
  count: 6
)
```

