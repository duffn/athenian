# Athenian::GetPullRequestsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account ID. |  |
| **prs** | [**Array&lt;PullRequestNumbers&gt;**](PullRequestNumbers.md) | List of repositories and PR numbers to list. |  |
| **environments** | **Array&lt;String&gt;** | Deployment environments to apply. If omitted, any deployment counts. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::GetPullRequestsRequest.new(
  account: null,
  prs: null,
  environments: null
)
```

