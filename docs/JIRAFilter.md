# Athenian::JIRAFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **epics** | **Array&lt;String&gt;** | JIRA issues must be included in the epics from the list. | [optional] |
| **labels_include** | **Array&lt;String&gt;** | Only issues having at least one label from the list will be included Several labels may be concatenated by a comma &#x60;,&#x60; so that all of them are required.  | [optional] |
| **labels_exclude** | **Array&lt;String&gt;** | Issues having one label from the list will be excluded. | [optional] |
| **issue_types** | **Array&lt;String&gt;** | Issues must have one of the given types, e.g. Bug, Task, Design Document, etc.  | [optional] |
| **priorities** | **Array&lt;String&gt;** | Issues must have a priority from the given list. | [optional] |
| **projects** | **Array&lt;String&gt;** | Issues must be contained in a project in the given project keys list. | [optional] |
| **status_categories** | [**Array&lt;JIRAStatusCategory&gt;**](JIRAStatusCategory.md) | The JIRA issues must have a status belonging to one of these categories. | [optional] |
| **unmapped** | **Boolean** | Select PRs that are not mapped to any JIRA issue. May not be specified with anything else. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAFilter.new(
  epics: null,
  labels_include: null,
  labels_exclude: null,
  issue_types: null,
  priorities: null,
  projects: null,
  status_categories: null,
  unmapped: null
)
```

