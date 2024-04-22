# Brevo::SendSmtpEmailAttachmentInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | Absolute url of the attachment (no local file). | [optional] |
| **content** | **String** | Base64 encoded chunk data of the attachment generated on the fly | [optional] |
| **name** | **String** | Required if content is passed. Name of the attachment | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::SendSmtpEmailAttachmentInner.new(
  url: https://attachment.domain.com/myAttachmentFromUrl.jpg,
  content: b3JkZXIucGRm,
  name: myAttachment.png
)
```

