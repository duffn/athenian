# Athenian::IncludedJIRAIssues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **jira** | [**Hash&lt;String, LinkedJIRAIssue&gt;**](LinkedJIRAIssue.md) | Mapping JIRA issue ID -&gt; details. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::IncludedJIRAIssues.new(
  jira: null
)
```

