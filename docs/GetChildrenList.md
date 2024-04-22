# Brevo::GetChildrenList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **children** | [**Array&lt;GetChildrenListChildrenInner&gt;**](GetChildrenListChildrenInner.md) | Your children&#39;s account information | [optional] |
| **count** | **Integer** | Number of child accounts |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetChildrenList.new(
  children: null,
  count: 24
)
```

