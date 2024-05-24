# Brevo::GetInboundEmailEventsByUuidAttachmentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | filename specified in the Content-Disposition header of the attachment | [optional] |
| **content_type** | **String** | value of the Content-Type header of the attachment | [optional] |
| **content_id** | **String** | value of the Content-ID header of the attachment. | [optional] |
| **content_length** | **Integer** | size of the attachment in bytes | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetInboundEmailEventsByUuidAttachmentsInner.new(
  name: null,
  content_type: null,
  content_id: null,
  content_length: null
)
```

