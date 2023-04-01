# Athenian::JIRAIssueAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **project** | **String** | Identifier of the project where this issue exists. |  |
| **prs** | [**Array&lt;PullRequest&gt;**](PullRequest.md) | Details about the mapped PRs. &#x60;jira&#x60; field is unfilled. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAIssueAllOf.new(
  project: null,
  prs: null
)
```

