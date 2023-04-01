# Athenian::DeveloperSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **String** | Developer&#39;s login name. |  |
| **name** | **String** | Developer&#39;s full name. |  |
| **avatar** | **String** | Developer&#39;s avatar URL. |  |
| **updates** | [**DeveloperUpdates**](DeveloperUpdates.md) |  |  |
| **jira_user** | **String** | Mapped JIRA user name. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::DeveloperSummary.new(
  login: github.com/gkwillie,
  name: Groundskeeper Willie,
  avatar: https://avatars0.githubusercontent.com/u/60340680?v&#x3D;4,
  updates: null,
  jira_user: null
)
```

