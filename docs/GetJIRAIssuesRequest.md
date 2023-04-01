# Athenian::GetJIRAIssuesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account ID. |  |
| **include** | [**Array&lt;GetJIRAIssuesInclude&gt;**](GetJIRAIssuesInclude.md) | Additional informations to include in the response. | [optional] |
| **issues** | **Array&lt;String&gt;** | List of issue identifiers (issue keys) to retrieve. The order of the requested issues will be preserved in the response.  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::GetJIRAIssuesRequest.new(
  account: null,
  include: null,
  issues: null
)
```

