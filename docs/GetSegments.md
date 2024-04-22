# Brevo::GetSegments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **segments** | [**GetSegmentsSegments**](GetSegmentsSegments.md) |  | [optional] |
| **count** | **Integer** | Number of Segments in your account | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSegments.new(
  segments: null,
  count: 10
)
```

