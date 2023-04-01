# Athenian::DeployedPullRequestAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \&quot;.git\&quot; should be appended. We support a special syntax for repository sets: \&quot;{reposet id}\&quot; adds all the repositories from the given set.  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::DeployedPullRequestAllOf.new(
  repository: github.com/athenianco/athenian-webapp
)
```

