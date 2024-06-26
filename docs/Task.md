# Brevo::Task

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique task id | [optional] |
| **task_type_id** | **String** | Id for type of task e.g Call / Email / Meeting etc. |  |
| **name** | **String** | Name of task |  |
| **contacts_ids** | **Array&lt;Integer&gt;** | Contact ids for contacts linked to this task | [optional] |
| **deals_ids** | **Array&lt;String&gt;** | Deal ids for deals a task is linked to | [optional] |
| **companies_ids** | **Array&lt;String&gt;** | Companies ids for companies a task is linked to | [optional] |

## Example

```ruby
require 'brevo'

instance = Brevo::Task.new(
  id: 61a5cd07ca1347c82306ad06,
  task_type_id: 61a5cd07ca1347c82306ad09,
  name: Task: Connect with client,
  contacts_ids: [1,2,3],
  deals_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;,&quot;61a5ce58c5d4795761045992&quot;],
  companies_ids: [&quot;61a5ce58c5d4795761045990&quot;,&quot;61a5ce58c5d4795761045991&quot;,&quot;61a5ce58c5d4795761045992&quot;]
)
```

