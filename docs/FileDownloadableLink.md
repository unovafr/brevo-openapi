# Brevo::FileDownloadableLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_url** | **String** | A unique link to download the requested file. | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::FileDownloadableLink.new(
  file_url: https://storage.googleapis.com/brevo-app-crm.......-sample.pdf
)
```

