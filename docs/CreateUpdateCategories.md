# Brevo::CreateUpdateCategories

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique Category ID as saved in the shop  |  |
| **name** | **String** | **Mandatory in case of creation**. Name of the Category, as displayed in the shop  | [optional] |
| **url** | **String** | URL to the category | [optional] |
| **deleted_at** | **String** | UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) of the category deleted from the shop&#39;s database | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CreateUpdateCategories.new(
  id: CAT123,
  name: Electronics,
  url: http://mydomain.com/category/electronics,
  deleted_at: 2017-05-12T12:30:00Z
)
```

