# Athenian::PullRequestNumbers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \&quot;.git\&quot; should be appended. We support a special syntax for repository sets: \&quot;{reposet id}\&quot; adds all the repositories from the given set.  |  |
| **numbers** | **Array&lt;Integer&gt;** |  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::PullRequestNumbers.new(
  repository: github.com/athenianco/athenian-webapp,
  numbers: null
)
```

