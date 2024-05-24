# Brevo::ExportWebhooksHistoryRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'brevo'

Brevo::ExportWebhooksHistoryRequest.openapi_one_of
# =>
# [
#   :'ExportWebhooksHistory'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'brevo'

Brevo::ExportWebhooksHistoryRequest.build(data)
# => #<ExportWebhooksHistory:0x00007fdd4aab02a0>

Brevo::ExportWebhooksHistoryRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ExportWebhooksHistory`
- `nil` (if no type matches)

