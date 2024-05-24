# Brevo::ConversationsMessageFileImageInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **width** | **Integer** | Width of the image | [optional] |
| **height** | **Integer** | height of the image | [optional] |
| **preview_url** | **String** | URL of the preview | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::ConversationsMessageFileImageInfo.new(
  width: 1129,
  height: 525,
  preview_url: https://ucarecdn.com/03cd56cd-1de9-4f65-996d-08afdf27fa1b/-/preview/800x800/-/quality/lighter/
)
```

