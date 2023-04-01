# Athenian::JIRALabel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  |  |
| **last_used** | **Time** | When this label was last assigned to an issue. |  |
| **issues_count** | **Integer** | In how many issues (in the specified time interval) this label was used. |  |
| **kind** | **String** | Label kind - \&quot;Label\&quot;, \&quot;Component\&quot;, etc. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRALabel.new(
  title: null,
  last_used: null,
  issues_count: null,
  kind: null
)
```

