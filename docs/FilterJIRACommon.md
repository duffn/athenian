# Athenian::FilterJIRACommon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Session account ID. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **priorities** | **Array&lt;String&gt;** | Selected issue priorities. | [optional] |
| **types** | **Array&lt;String&gt;** | Selected issue types. Ignored for epics. | [optional] |
| **labels_include** | **Array&lt;String&gt;** | JIRA issues must contain at least one label from the list. Several labels may be concatenated by a comma &#x60;,&#x60; so that all of them are required. | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | JIRA issues may not contain labels from this list. | [optional] |
| **exclude_inactive** | **Boolean** | Value indicating whether issues with the last update older than &#x60;date_from&#x60; should be ignored. If &#x60;date_from&#x60; and &#x60;date_to&#x60; are &#x60;null&#x60;, does nothing. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::FilterJIRACommon.new(
  account: null,
  timezone: null,
  priorities: null,
  types: null,
  labels_include: null,
  labels_exclude: null,
  exclude_inactive: null
)
```

