# Athenian::MappedJIRAIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **developer_id** | [**ReleasedPullRequestAuthor**](ReleasedPullRequestAuthor.md) |  |  |
| **developer_name** | **String** | Full name of the mapped GitHub user. |  |
| **jira_name** | **String** | Full name of the mapped JIRA user. |  |
| **confidence** | **Float** | Value from 0 to 1 indicating how similar are the users. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::MappedJIRAIdentity.new(
  developer_id: null,
  developer_name: null,
  jira_name: null,
  confidence: null
)
```

