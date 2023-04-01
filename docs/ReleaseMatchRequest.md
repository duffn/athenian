# Athenian::ReleaseMatchRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Account ID. |  |
| **repositories** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. |  |
| **branches** | **String** | Regular expression to match branch names. The match starts from the beginning of the string. Special value &#x60;{{default}}&#x60; matches to the default branch name - usually, &#x60;main&#x60; or &#x60;master&#x60;. Reference: https://www.postgresql.org/docs/current/functions-matching.html#FUNCTIONS-SIMILARTO-REGEXP  | [optional] |
| **tags** | **String** | Regular expression to match tag names. The match starts from the beginning of the string. Reference: https://www.postgresql.org/docs/current/functions-matching.html#FUNCTIONS-SIMILARTO-REGEXP  | [optional] |
| **events** | **String** | Regular expression to match event releases (submitted by the user via &#x60;/events/releases&#x60;). The match starts from the beginning of the string. Reference: https://www.postgresql.org/docs/current/functions-matching.html#FUNCTIONS-SIMILARTO-REGEXP  | [optional] |
| **match** | [**ReleaseMatchStrategy**](ReleaseMatchStrategy.md) |  |  |

## Example

```ruby
require 'athenian'

instance = Athenian::ReleaseMatchRequest.new(
  account: null,
  repositories: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  branches: .*-production,
  tags: .*,
  events: null,
  match: null
)
```

