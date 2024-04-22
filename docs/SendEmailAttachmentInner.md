# Brevo::SendEmailAttachmentInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** | Base64 encoded chunk data of the attachment generated on the fly |  |
| **name** | **String** | Required for content. Name of the attachment |  |

## Example

```ruby
require 'brevo'

instance = Brevo::SendEmailAttachmentInner.new(
  content: b3JkZXIucGRm,
  name: myAttachment.png
)
```

