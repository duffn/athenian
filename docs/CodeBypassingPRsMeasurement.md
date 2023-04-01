# Athenian::CodeBypassingPRsMeasurement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Commits were pushed beginning with this date. They were not pushed later than +granularity. |  |
| **bypassed_commits** | **Integer** | Number of commits that bypassed PRs in the time interval. |  |
| **bypassed_lines** | **Integer** | Number of changed (added + removed) lines that bypassed PRs in the time interval. |  |
| **total_commits** | **Integer** | Overall number of commits in the time interval. |  |
| **total_lines** | **Integer** | Overall number of changed (added + removed) lines in the time interval. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::CodeBypassingPRsMeasurement.new(
  date: null,
  bypassed_commits: null,
  bypassed_lines: null,
  total_commits: null,
  total_lines: null
)
```

