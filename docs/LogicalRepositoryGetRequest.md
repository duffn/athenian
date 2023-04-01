# Athenian::LogicalRepositoryGetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account ID. |  |
| **name** | **String** | Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \&quot;.git\&quot; should be appended. We support a special syntax for repository sets: \&quot;{reposet id}\&quot; adds all the repositories from the given set.  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::LogicalRepositoryGetRequest.new(
  account: null,
  name: github.com/athenianco/athenian-webapp
)
```

