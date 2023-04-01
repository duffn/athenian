# Athenian::FilterJIRAStuff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Session account ID. |  |
| **date_from** | **Date** | &#x60;null&#x60; disables the time filter boundary, thus everything is returned. &#x60;date_from&#x60; and &#x60;date_to&#x60; must be both either &#x60;null&#x60; or not &#x60;null&#x60;. |  |
| **date_to** | **Date** | &#x60;null&#x60; disables the time filter boundary, thus everything is returned. &#x60;date_from&#x60; and &#x60;date_to&#x60; must be both either &#x60;null&#x60; or not &#x60;null&#x60;. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **priorities** | **Array&lt;String&gt;** | Selected issue priorities. | [optional] |
| **types** | **Array&lt;String&gt;** | Selected issue types. Ignored for epics. | [optional] |
| **labels_include** | **Array&lt;String&gt;** | JIRA issues must contain at least one label from the list. Several labels may be concatenated by a comma &#x60;,&#x60; so that all of them are required. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | JIRA issues may not contain labels from this list. | [optional] |
| **exclude_inactive** | **Boolean** | Value indicating whether issues with the last update older than &#x60;date_from&#x60; should be ignored. If &#x60;date_from&#x60; and &#x60;date_to&#x60; are &#x60;null&#x60;, does nothing. |  |
| **with** | [**FilterJIRAStuffWith**](FilterJIRAStuffWith.md) |  | [optional] |
| **projects** | **Array&lt;String&gt;** | Issues must belong to these JIRA projects. | [optional] |
| **_return** | [**Array&lt;JIRAFilterReturn&gt;**](JIRAFilterReturn.md) | Specifies which items are required, an empty or missing array means everything. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilterJIRAStuff.new(
  account: null,
  date_from: null,
  date_to: null,
  timezone: null,
  priorities: null,
  types: null,
  labels_include: null,
  labels_exclude: null,
  exclude_inactive: null,
  with: null,
  projects: null,
  _return: null
)
```

