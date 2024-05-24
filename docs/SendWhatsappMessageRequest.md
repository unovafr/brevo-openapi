# Brevo::SendWhatsappMessageRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'brevo'

Brevo::SendWhatsappMessageRequest.openapi_one_of
# =>
# [
#   :'SendWhatsappMessageTemplate',
#   :'SendWhatsappMessageText'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'brevo'

Brevo::SendWhatsappMessageRequest.build(data)
# => #<SendWhatsappMessageTemplate:0x00007fdd4aab02a0>

Brevo::SendWhatsappMessageRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SendWhatsappMessageTemplate`
- `SendWhatsappMessageText`
- `nil` (if no type matches)

