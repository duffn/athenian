# Athenian::InstallationProgress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **started_date** | **Time** | Date and time when the historical data collection began. |  |
| **finished_date** | **Time** | Date and time when the historical data collection ended. |  |
| **owner** | **String** | Login of the person who installed the metadata. | [optional] |
| **repositories** | **Integer** | Number of discovered repositories. | [optional] |
| **tables** | [**Array&lt;TableFetchingProgress&gt;**](TableFetchingProgress.md) |  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::InstallationProgress.new(
  started_date: null,
  finished_date: null,
  owner: null,
  repositories: null,
  tables: [{&quot;fetched&quot;:50,&quot;name&quot;:&quot;Commit&quot;,&quot;total&quot;:100},{&quot;fetched&quot;:0,&quot;total&quot;:200,&quot;name&quot;:&quot;PullRequest&quot;}]
)
```

