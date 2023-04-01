# Athenian::Account

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **admins** | [**Array&lt;User&gt;**](User.md) | List of admin users. |  |
| **regulars** | [**Array&lt;User&gt;**](User.md) | List of non-admin users. |  |
| **organizations** | [**Array&lt;Organization&gt;**](Organization.md) | List of installed GitHub organizations. |  |
| **datasources** | [**Array&lt;Datasource&gt;**](Datasource.md) | The list of datasources configured for the account. |  |
| **jira** | [**JIRAInstallation**](JIRAInstallation.md) |  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::Account.new(
  admins: null,
  regulars: null,
  organizations: null,
  datasources: null,
  jira: null
)
```

