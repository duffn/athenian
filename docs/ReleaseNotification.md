# Athenian::ReleaseNotification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \&quot;.git\&quot; should be appended. We support a special syntax for repository sets: \&quot;{reposet id}\&quot; adds all the repositories from the given set.  |  |
| **commit** | **String** | Commit hash, either short (7 chars) or long (40 chars) form. |  |
| **name** | **String** | Release name. The value may not contain \\n - new line character, and &#39; - single quote.  | [optional] |
| **author** | **String** | Release author. | [optional] |
| **url** | **String** | Release URL. | [optional] |
| **published_at** | **Time** | When the release was created. If missing, set to &#x60;now()&#x60;. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::ReleaseNotification.new(
  repository: github.com/athenianco/athenian-webapp,
  commit: null,
  name: null,
  author: null,
  url: null,
  published_at: null
)
```

