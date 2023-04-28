# Athenian::AccountStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_admin** | **Boolean** | Indicates whether the user is an account administrator. |  |
| **expired** | **Boolean** | Indicates whether the account is disabled. |  |
| **stale** | **Boolean** | Indicates whether the account is temporarily not receiving data updates. |  |
| **has_jira** | **Boolean** | Indicates whether the account installed the integration with JIRA. |  |
| **has_ci** | **Boolean** | Indicates whether the account permitted the access to check suites. |  |
| **has_deployments** | **Boolean** | Indicates whether the account has submitted at least one deployment. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::AccountStatus.new(
  is_admin: null,
  expired: null,
  stale: null,
  has_jira: null,
  has_ci: null,
  has_deployments: null
)
```

