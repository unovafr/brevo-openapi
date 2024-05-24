# Brevo::RemoveContactFromListRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'brevo'

Brevo::RemoveContactFromListRequest.openapi_one_of
# =>
# [
#   :'RemoveContactFromListByAll',
#   :'RemoveContactFromListByEmails',
#   :'RemoveContactFromListByIDs'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'brevo'

Brevo::RemoveContactFromListRequest.build(data)
# => #<RemoveContactFromListByAll:0x00007fdd4aab02a0>

Brevo::RemoveContactFromListRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `RemoveContactFromListByAll`
- `RemoveContactFromListByEmails`
- `RemoveContactFromListByIDs`
- `nil` (if no type matches)

