# Brevo::GetLists

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lists** | [**Array&lt;GetListsListsInner&gt;**](GetListsListsInner.md) | Listing of all the lists available in your account | [optional] |
| **count** | **Integer** | Number of lists in your account | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetLists.new(
  lists: null,
  count: 150
)
```

