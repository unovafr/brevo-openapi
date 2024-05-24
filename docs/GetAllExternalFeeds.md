# Brevo::GetAllExternalFeeds

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **count** | **Integer** | Total number of batches | [optional] |
| **feeds** | [**Array&lt;GetAllExternalFeedsFeedsInner&gt;**](GetAllExternalFeedsFeedsInner.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetAllExternalFeeds.new(
  count: null,
  feeds: null
)
```

