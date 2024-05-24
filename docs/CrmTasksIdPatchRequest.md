# Brevo::CrmTasksIdPatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of task | [optional] |
| **duration** | **Integer** | Duration of task in milliseconds [1 minute &#x3D; 60000 ms] | [optional] |
| **task_type_id** | **String** | Id for type of task e.g Call / Email / Meeting etc. | [optional] |
| **date** | **Time** | Task date/time | [optional] |
| **notes** | **String** | Notes added to a task | [optional] |
| **done** | **Boolean** | Task marked as done | [optional] |
| **assign_to_id** | **String** | To assign a task to a user you can use either the account email or ID. | [optional] |
| **contacts_ids** | **Array&lt;Integer&gt;** | Contact ids for contacts linked to this task | [optional] |
| **deals_ids** | **Array&lt;String&gt;** | Deal ids for deals a task is linked to | [optional] |
| **companies_ids** | **Array&lt;String&gt;** | Companies ids for companies a task is linked to | [optional] |
| **reminder** | [**TaskReminder**](TaskReminder.md) |  | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::CrmTasksIdPatchRequest.new(
  name: Task: Connect with client,
  duration: 600000,
  task_type_id: 61a5cd07ca1347c82306ad09,
  date: 2021-11-01T17:44:54.668Z,
  notes: In communication with client for resolution of queries.,
  done: false,
  assign_to_id: 5faab4b7f195bb3c4c31e62a,
  contacts_ids: [1,2,3],
  deals_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;,&quot;61a5ce58c5d4795761045992&quot;],
  companies_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;,&quot;61a5ce58c5d4795761045992&quot;],
  reminder: null
)
```

