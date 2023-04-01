# Athenian::FilterContributorsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Session account ID. |  |
| **date_from** | **Date** | Updates must be later than or equal to this date. An update is any action that influences the stage assignment. |  |
| **date_to** | **Date** | Updates must be earlier than or equal to this date. An update is any action that influences the stage assignment. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **_in** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. | [optional] |
| **as** | **Array&lt;String&gt;** | Filter by contribution type. A &#x60;null&#x60; or an empty list select all. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilterContributorsRequest.new(
  account: null,
  date_from: null,
  date_to: null,
  timezone: null,
  _in: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  as: null
)
```

