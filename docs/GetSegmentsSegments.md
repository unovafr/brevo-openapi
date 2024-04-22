# Brevo::GetSegmentsSegments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | ID of the list | [optional] |
| **segment_name** | **String** | Name of the Segment | [optional] |
| **category_name** | **String** | Name of the Segment Category | [optional] |
| **updated_at** | **String** | Updation UTC date-time of the segment (YYYY-MM-DDTHH:mm:ss.SSSZ) | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetSegmentsSegments.new(
  id: 23,
  segment_name: My Segment,
  category_name: New Category,
  updated_at: 2017-03-13T17:05:09Z
)
```

