# Athenian::ReleaseMatchSetting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **branches** | **String** | Regular expression to match branch names. The match starts from the beginning of the string. Special value &#x60;{{default}}&#x60; matches to the default branch name - usually, &#x60;main&#x60; or &#x60;master&#x60;. Reference: https://www.postgresql.org/docs/current/functions-matching.html#FUNCTIONS-SIMILARTO-REGEXP  |  |
| **tags** | **String** | Regular expression to match tag names. The match starts from the beginning of the string. Reference: https://www.postgresql.org/docs/current/functions-matching.html#FUNCTIONS-SIMILARTO-REGEXP  |  |
| **events** | **String** | Regular expression to match event releases (submitted by the user via &#x60;/events/releases&#x60;). The match starts from the beginning of the string. Reference: https://www.postgresql.org/docs/current/functions-matching.html#FUNCTIONS-SIMILARTO-REGEXP  | [optional] |
| **match** | [**ReleaseMatchStrategy**](ReleaseMatchStrategy.md) |  |  |
| **default_branch** | **String** | Name of the default branch of this repository. Returned in responses and ignored in requests.  | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::ReleaseMatchSetting.new(
  branches: .*-production,
  tags: .*,
  events: null,
  match: null,
  default_branch: null
)
```

