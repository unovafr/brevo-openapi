# Brevo::GetCategoryDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Category ID for which you requested the details |  |
| **name** | **String** | Name of the category for which you requested the details |  |
| **created_at** | **String** | Creation UTC date-time of the category (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **modified_at** | **String** | Last modification UTC date-time of the category (YYYY-MM-DDTHH:mm:ss.SSSZ) |  |
| **url** | **String** | URL to the category | [optional] |
| **is_deleted** | **Boolean** | category deleted from the shop&#39;s database | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::GetCategoryDetails.new(
  id: C11,
  name: Electronics,
  created_at: 2017-05-12T12:30:00Z,
  modified_at: 2017-05-12T12:30:00Z,
  url: http://mydomain.com/category/clothing,
  is_deleted: true
)
```

