# Athenian::LinkedJIRAIssue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | JIRA issue key &#x60;PROJECT-###&#x60;. |  |
| **title** | **String** | Title of this issue. |  |
| **epic** | **String** | Identifier of the epic that owns this issue. | [optional] |
| **labels** | **Array&lt;String&gt;** | List of JIRA labels in this issue. | [optional] |
| **type** | **String** | Type of this issue. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::LinkedJIRAIssue.new(
  id: null,
  title: null,
  epic: null,
  labels: null,
  type: null
)
```

