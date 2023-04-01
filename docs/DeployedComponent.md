# Athenian::DeployedComponent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \&quot;.git\&quot; should be appended. We support a special syntax for repository sets: \&quot;{reposet id}\&quot; adds all the repositories from the given set.  |  |
| **reference** | **String** | We accept three ways to define a Git reference: 1. Tag name. 2. Full commit hash (40 characters). 3. Short commit hash (7 characters).  We ignore the reference while we cannot find it in our database. There can be two reasons: - There is a mistake or a typo in the provided data. - We are temporarily unable to synchronize with GitHub.  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::DeployedComponent.new(
  repository: github.com/athenianco/athenian-webapp,
  reference: null
)
```

