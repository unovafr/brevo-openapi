# Brevo::AddContactToListRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'brevo'

Brevo::AddContactToListRequest.openapi_one_of
# =>
# [
#   :'AddContactToListByEmails',
#   :'AddContactToListByIDs'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'brevo'

Brevo::AddContactToListRequest.build(data)
# => #<AddContactToListByEmails:0x00007fdd4aab02a0>

Brevo::AddContactToListRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AddContactToListByEmails`
- `AddContactToListByIDs`
- `nil` (if no type matches)

