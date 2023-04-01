# Athenian::MappedJIRAIdentityChange

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **developer_id** | **String** | User name which uniquely identifies any developer on any service provider. The format matches the profile URL without the protocol part.  |  |
| **jira_name** | **String** | Full name of the mapped JIRA user. &#x60;null&#x60; means the removal. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::MappedJIRAIdentityChange.new(
  developer_id: github.com/vmarkovtsev,
  jira_name: null
)
```

