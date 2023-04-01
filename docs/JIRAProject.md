# Athenian::JIRAProject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Long name of the project. |  |
| **key** | **String** | Short prefix of the project. |  |
| **id** | **String** | Internal project identifier that corresponds to &#x60;project&#x60; in &#x60;/filter/jira&#x60;. Note: this is a string even though this looks like an integer. That&#39;s what JIRA API sends us.  |  |
| **avatar_url** | **String** | Avatar URL of the project. |  |
| **enabled** | **Boolean** | Indicates whether this project is enabled for analysis. |  |
| **issues_count** | **Integer** | Total number of issues in the project. |  |
| **last_update** | **Time** | Timestamp of the last event in the project. Can be &#x60;null&#x60; if there are no issues.  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAProject.new(
  name: null,
  key: null,
  id: null,
  avatar_url: null,
  enabled: null,
  issues_count: null,
  last_update: null
)
```

