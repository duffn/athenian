# Athenian::ReleaseNames

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \&quot;.git\&quot; should be appended. We support a special syntax for repository sets: \&quot;{reposet id}\&quot; adds all the repositories from the given set.  |  |
| **names** | **Array&lt;String&gt;** | List of release names. For tag releases, those are the tag names. For branch releases, those are commit hashes. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::ReleaseNames.new(
  repository: github.com/athenianco/athenian-webapp,
  names: null
)
```

