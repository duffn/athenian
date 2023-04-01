# Athenian::JIRAIssueType

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the issue type. |  |
| **normalized_name** | **String** | Normalized name of the issue type. For example, \&quot;Sub-tásks\&quot; becomes \&quot;subtask\&quot;. |  |
| **count** | **Integer** | Number of issues that satisfy the filters and belong to this type. |  |
| **image** | **String** | Icon URL. |  |
| **project** | **String** | Bound project identifier. |  |
| **is_subtask** | **Boolean** | Value indicating whether this issue type refers to a sub-task. |  |
| **is_epic** | **Boolean** | Value indicating whether this issue type refers to an epic. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAIssueType.new(
  name: null,
  normalized_name: null,
  count: null,
  image: null,
  project: null,
  is_subtask: null,
  is_epic: null
)
```

