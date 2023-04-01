# Athenian::FilteredJIRAStuff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **epics** | [**Array&lt;JIRAEpic&gt;**](JIRAEpic.md) | List of epics satisfying the filters. |  |
| **issues** | [**Array&lt;JIRAIssue&gt;**](JIRAIssue.md) | List of issues satisfying the filters. |  |
| **issue_types** | [**Array&lt;JIRAIssueType&gt;**](JIRAIssueType.md) | Mentioned issue types. |  |
| **labels** | [**Array&lt;JIRALabel&gt;**](JIRALabel.md) | Mentioned issue labels. |  |
| **priorities** | [**Array&lt;JIRAPriority&gt;**](JIRAPriority.md) | Mentioned issue priorites sorted by importance in ascending order. |  |
| **statuses** | [**Array&lt;JIRAStatus&gt;**](JIRAStatus.md) | Mentioned issue statuses sorted by name. |  |
| **users** | [**Array&lt;JIRAUser&gt;**](JIRAUser.md) | Mentioned users in the filtered issues. |  |
| **deployments** | [**IncludedDeployments**](IncludedDeployments.md) |  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilteredJIRAStuff.new(
  epics: null,
  issues: null,
  issue_types: null,
  labels: null,
  priorities: null,
  statuses: null,
  users: null,
  deployments: null
)
```

