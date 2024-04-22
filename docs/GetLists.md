# Brevo::GetLists

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lists** | [**Array&lt;GetListsListsInner&gt;**](GetListsListsInner.md) | Listing of all the lists available in your account |  |
| **count** | **Integer** | Number of lists in your account |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetLists.new(
  lists: null,
  count: 150
)
```

