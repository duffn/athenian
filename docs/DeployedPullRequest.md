# Athenian::DeployedPullRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \&quot;.git\&quot; should be appended. We support a special syntax for repository sets: \&quot;{reposet id}\&quot; adds all the repositories from the given set.  |  |
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

instance = Athenian::DeployedPullRequest.new(
  repository: github.com/athenianco/athenian-webapp,
  additions: null,
  author: null,
  created: null,
  deletions: null,
  jira: null,
  number: null,
  title: null
)
```

