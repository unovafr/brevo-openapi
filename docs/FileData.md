# Brevo::FileData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of uploaded file | [optional] |
| **author_id** | **String** | Account id of user which created the file | [optional] |
| **contact_id** | **Integer** | Contact id of contact on which file is uploaded | [optional] |
| **deal_id** | **String** | Deal id linked to a file | [optional] |
| **company_id** | **String** | Company id linked to a file | [optional] |
| **size** | **Integer** | Size of file in bytes | [optional] |
| **created_at** | **Time** | File created date/time | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::FileData.new(
  name: example.png,
  author_id: 61a5ce58y5d4795761045991,
  contact_id: 1,
  deal_id: 61a5ce58c5d4795761045991,
  company_id: 61a5ce58c5d4795761045991,
  size: 10,
  created_at: 2017-05-01T17:05:03Z
)
```

