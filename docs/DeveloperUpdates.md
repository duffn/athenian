# Athenian::DeveloperUpdates

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prs** | **Integer** | How many PRs authored by this developer updated. Note: this is not the same as the number of PRs this developer opened. Note: the update origin is not necessarily this developer. | [optional] |
| **reviewer** | **Integer** | How many reviews this developer submitted. Note: this is not the same as the number of unique PRs reviewed. | [optional] |
| **commit_author** | **Integer** | How many commits this developer authored. | [optional] |
| **commit_committer** | **Integer** | How many commits this developer pushed. | [optional] |
| **commenter** | **Integer** | How many regular PR comments this developer left. Note: issues are not taken into account, only the PRs. | [optional] |
| **releaser** | **Integer** | How many releases this developer created. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::DeveloperUpdates.new(
  prs: null,
  reviewer: null,
  commit_author: null,
  commit_committer: null,
  commenter: null,
  releaser: null
)
```

