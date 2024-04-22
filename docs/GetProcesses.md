# Brevo::GetProcesses

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **processes** | [**Array&lt;GetProcess&gt;**](GetProcess.md) | List of processes available on your account | [optional] |
| **count** | **Integer** | Number of processes available on your account |  |

## Example

```ruby
require 'brevo'

instance = Brevo::GetProcesses.new(
  processes: null,
  count: 5
)
```
