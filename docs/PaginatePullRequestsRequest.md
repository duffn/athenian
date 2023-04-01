# Athenian::PaginatePullRequestsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch** | **Integer** | Target batch size. The returned ranges do not guarantee the exact match. |  |
| **request** | [**FilterPullRequestsRequest**](FilterPullRequestsRequest.md) |  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::PaginatePullRequestsRequest.new(
  batch: null,
  request: null
)
```

