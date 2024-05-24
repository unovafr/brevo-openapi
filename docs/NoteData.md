# Brevo::NoteData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | Text content of a note |  |
| **contact_ids** | **Array&lt;Integer&gt;** | Contact Ids linked to a note | [optional] |
| **deal_ids** | **Array&lt;String&gt;** | Deal Ids linked to a note | [optional] |
| **company_ids** | **Array&lt;String&gt;** | Company Ids linked to a note | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::NoteData.new(
  text: In communication with client for resolution of queries.,
  contact_ids: [247,1,2],
  deal_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;],
  company_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;]
)
```

