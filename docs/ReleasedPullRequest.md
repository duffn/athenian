# Athenian::ReleasedPullRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additions** | **Integer** |  |  |
| **author** | [**ReleasedPullRequestAuthor**](ReleasedPullRequestAuthor.md) |  |  |
| **created** | **Time** | When this PR was created. |  |
| **deletions** | **Integer** |  |  |
| **jira** | **Array&lt;String&gt;** | Mapped JIRA issue IDs. | [optional] |
| **number** | **Integer** |  |  |
| **title** | **String** |  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::ReleasedPullRequest.new(
  additions: null,
  author: null,
  created: null,
  deletions: null,
  jira: null,
  number: null,
  title: null
)
```

