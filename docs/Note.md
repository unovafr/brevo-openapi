# Brevo::Note

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique note Id | [optional] |
| **text** | **String** | Text content of a note |  |
| **contact_ids** | **Array&lt;Integer&gt;** | Contact ids linked to a note | [optional] |
| **deal_ids** | **Array&lt;String&gt;** | Deal ids linked to a note | [optional] |
| **author_id** | **Object** | Account details of user which created the note | [optional] |
| **created_at** | **Time** | Note created date/time | [optional] |
| **updated_at** | **Time** | Note updated date/time | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::Note.new(
  id: 61a5cd07ca1347c82306ad09,
  text: In communication with client for resolution of queries.,
  contact_ids: [247,1,2],
  deal_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;],
  author_id: {&quot;id&quot;:&quot;61a5ce58y5d4795761045991&quot;,&quot;email&quot;:&quot;johndoe@example.com&quot;,&quot;locale&quot;:&quot;en_GB&quot;,&quot;timezone&quot;:&quot;Asia/Kolkata&quot;,&quot;name&quot;:{&quot;fullName&quot;:&quot;John Doe&quot;}},
  created_at: 2017-05-01T17:05:03Z,
  updated_at: 2017-05-01T17:05:03Z
)
```

