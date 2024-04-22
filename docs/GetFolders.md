# Brevo::GetFolders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folders** | [**Array&lt;GetFolder&gt;**](GetFolder.md) |  | [optional] |
| **count** | **Integer** | Number of folders available in your account | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetFolders.new(
  folders: null,
  count: 10
)
```

