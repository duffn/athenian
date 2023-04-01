# Athenian::FilteredDeploymentsInclude

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | [**Hash&lt;String, IncludedNativeUser&gt;**](IncludedNativeUser.md) | Mapping user native (e.g., GitHub) login ID -&gt; user details. The users are mentioned in the PRs from \&quot;PullRequestSet.data\&quot; or in the commits from \&quot;FilterCommitsRequest.data\&quot;. |  |
| **jira** | [**Hash&lt;String, LinkedJIRAIssue&gt;**](LinkedJIRAIssue.md) | Mapping JIRA issue ID -&gt; details. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilteredDeploymentsInclude.new(
  users: null,
  jira: null
)
```

