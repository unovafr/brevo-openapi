# Brevo::ConversationsMessageFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filename** | **String** | Name of the file | [optional] |
| **size** | **Integer** | Size in bytes | [optional] |
| **is_image** | **Boolean** | Whether the file is an image | [optional] |
| **url** | **String** | URL of the file | [optional] |
| **image_info** | [**ConversationsMessageFileImageInfo**](ConversationsMessageFileImageInfo.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::ConversationsMessageFile.new(
  filename: conversations.png,
  size: 15538,
  is_image: true,
  url: https://ucarecdn.com/cee5c10c-8302-45c1-b1fb-43860ca941a9/,
  image_info: null
)
```

