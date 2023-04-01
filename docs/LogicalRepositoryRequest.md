# Athenian::LogicalRepositoryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account ID. |  |
| **name** | **String** | The logical part of the repository name. Compared to GitHub repository name requirements, we additionally allow / to express the hierarchy further.  |  |
| **parent** | **String** | Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \&quot;.git\&quot; should be appended. We support a special syntax for repository sets: \&quot;{reposet id}\&quot; adds all the repositories from the given set.  |  |
| **prs** | [**LogicalPRRules**](LogicalPRRules.md) |  |  |
| **releases** | [**ReleaseMatchSetting**](ReleaseMatchSetting.md) |  |  |
| **deployments** | [**LogicalDeploymentRules**](LogicalDeploymentRules.md) |  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::LogicalRepositoryRequest.new(
  account: null,
  name: null,
  parent: github.com/athenianco/athenian-webapp,
  prs: null,
  releases: null,
  deployments: null
)
```

