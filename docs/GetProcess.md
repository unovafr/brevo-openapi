# Brevo::GetProcess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Id of the process |  |
| **status** | **String** | Status of the process |  |
| **name** | **String** | Process name |  |
| **export_url** | **String** | URL on which send export the of contacts once the process is completed | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetProcess.new(
  id: 145,
  status: queued,
  name: IMPORTUSER,
  export_url: http://requestb.in/16ua3aj1
)
```

