# Athenian::GetJIRAIssuesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include** | [**GetJIRAIssuesResponseInclude**](GetJIRAIssuesResponseInclude.md) |  | [optional] |
| **issues** | [**Array&lt;JIRAIssue&gt;**](JIRAIssue.md) |  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::GetJIRAIssuesResponse.new(
  include: null,
  issues: null
)
```

