# Athenian::FilteredCodeCheckRun

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Unique name of the check run. |  |
| **repository** | **String** | Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \&quot;.git\&quot; should be appended. We support a special syntax for repository sets: \&quot;{reposet id}\&quot; adds all the repositories from the given set.  |  |
| **last_execution_time** | **Time** | Timestamp of when the check run launched the latest. |  |
| **last_execution_url** | **String** | Link to the check run that launched the latest. | [optional] |
| **total_stats** | [**FilteredCodeCheckRunTotalStats**](FilteredCodeCheckRunTotalStats.md) |  |  |
| **prs_stats** | [**FilteredCodeCheckRunPrsStats**](FilteredCodeCheckRunPrsStats.md) |  |  |
| **size_groups** | **Array&lt;Integer&gt;** | Check suite sizes this check run belongs to. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::FilteredCodeCheckRun.new(
  title: null,
  repository: github.com/athenianco/athenian-webapp,
  last_execution_time: null,
  last_execution_url: null,
  total_stats: null,
  prs_stats: null,
  size_groups: null
)
```

