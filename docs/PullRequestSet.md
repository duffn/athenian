# Athenian::PullRequestSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | [**PullRequestSetInclude**](PullRequestSetInclude.md) |  |  |
| **data** | [**Array&lt;PullRequest&gt;**](PullRequest.md) | List of matched pull requests. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::PullRequestSet.new(
  include: null,
  data: null
)
```

