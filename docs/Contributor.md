# Athenian::Contributor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **login** | **String** | User name which uniquely identifies any developer on any service provider. The format matches the profile URL without the protocol part.  |  |
| **name** | **String** | Full name of the contributor. | [optional] |
| **email** | **String** | Email of the conributor. | [optional] |
| **picture** | **String** | Avatar URL of the contributor. | [optional] |
| **jira_user** | **String** | Mapped JIRA user name. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::Contributor.new(
  login: github.com/vmarkovtsev,
  name: null,
  email: null,
  picture: null,
  jira_user: null
)
```

