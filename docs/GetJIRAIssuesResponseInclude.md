# Athenian::GetJIRAIssuesResponseInclude

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **github_users** | [**Hash&lt;String, IncludedNativeUser&gt;**](IncludedNativeUser.md) | Mapping with details of the GitHub users mentioned in the linked pull requests.  | [optional] |
| **jira_users** | [**Array&lt;JIRAUser&gt;**](JIRAUser.md) | Mentioned users in the returned isssues. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::GetJIRAIssuesResponseInclude.new(
  github_users: null,
  jira_users: null
)
```

