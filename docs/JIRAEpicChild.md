# Athenian::JIRAEpicChild

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | JIRA issue key &#x60;PROJECT-###&#x60;. |  |
| **title** | **String** | Title of this issue. |  |
| **created** | **Time** | When this issue was created. |  |
| **updated** | **Time** | When this issue was last updated. |  |
| **work_began** | **Time** | When the issue entered the \&quot;In Progress\&quot; stage or received a PR. This timestamp can be missing and is always less than or equal to &#x60;resolved&#x60;. | [optional] |
| **resolved** | **Time** | When the issue finished: the stage is \&quot;Done\&quot; and all PRs are either released or rejected. This timestamp can be missing and is always greater than or equal to &#x60;work_began&#x60;. | [optional] |
| **lead_time** | **Object** |  | [optional] |
| **life_time** | **Object** |  |  |
| **reporter** | **String** | Name of the person who reported the issue. |  |
| **assignee** | **String** | Name of the assigned person. | [optional] |
| **comments** | **Integer** | Number of comments in the issue excluding sub-tasks and children. |  |
| **comment_list** | [**Array&lt;JIRAComment&gt;**](JIRAComment.md) | The list of comments for the issue. | [optional] |
| **priority** | **String** | Name of the priority. The details are returned in &#x60;FilteredJIRAStuff.priorities&#x60;. |  |
| **rendered_description** | **String** | The description of the issue rendered as HTML. | [optional] |
| **status** | **String** | Name of the status. The details are returned in &#x60;FilteredJIRAStuff.statuses&#x60;. |  |
| **story_points** | **Float** | Value of the \&quot;story points\&quot; field. | [optional] |
| **type** | **String** | Name of the issue type. The details are returned in &#x60;FilteredJIRAStuff.issue_types&#x60;. |  |
| **url** | **String** | Link to the issue in JIRA web application. |  |
| **subtasks** | **Integer** | Number of sub-tasks. |  |
| **prs** | **Integer** | Number of mapped pull requests. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::JIRAEpicChild.new(
  id: null,
  title: null,
  created: null,
  updated: null,
  work_began: null,
  resolved: null,
  lead_time: null,
  life_time: null,
  reporter: null,
  assignee: null,
  comments: null,
  comment_list: null,
  priority: null,
  rendered_description: null,
  status: null,
  story_points: null,
  type: null,
  url: null,
  subtasks: null,
  prs: null
)
```

