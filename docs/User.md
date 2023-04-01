# Athenian::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Hash&lt;String, AccountStatus&gt;**](AccountStatus.md) | Mapping from user&#39;s account ID the membership status. | [optional] |
| **email** | **String** | Email of the user. | [optional] |
| **id** | **String** | Auth0 user identifier. |  |
| **impersonated_by** | **String** | Identifier of the super admin user who is acting on behalf of. | [optional] |
| **login** | **String** | Auth backend user login name. |  |
| **native_id** | **String** | Auth backend user identifier. |  |
| **name** | **String** | Full name of the user. | [optional] |
| **picture** | **String** | Avatar URL of the user. | [optional] |
| **updated** | **Time** | Date and time of the last profile update. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::User.new(
  accounts: null,
  email: null,
  id: null,
  impersonated_by: null,
  login: null,
  native_id: null,
  name: null,
  picture: null,
  updated: null
)
```

