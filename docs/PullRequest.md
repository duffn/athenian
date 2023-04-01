# Athenian::PullRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repository** | **String** | PR is/was open in this repository. |  |
| **number** | **Integer** | PR number. |  |
| **title** | **String** | Title of the PR. |  |
| **size_added** | **Integer** | Overall number of lines added. |  |
| **size_removed** | **Integer** | Overall number of lines removed. |  |
| **files_changed** | **Integer** | Number of files changed in this PR. |  |
| **created** | **Time** | When this PR was created. |  |
| **updated** | **Time** | When this PR was last updated. |  |
| **closed** | **Time** | When this PR was last closed. | [optional] |
| **comments** | **Integer** | Number of *regular* (not review) comments in this PR. |  |
| **commits** | **Integer** | Number of commits in this PR. |  |
| **review_requested** | **Time** | When was the first time the author of this PR requested a review. | [optional] |
| **first_review** | **Time** | When the first review of this PR happened. | [optional] |
| **approved** | **Time** | When this PR was approved. | [optional] |
| **review_comments** | **Integer** | Number of review comments this PR received. A review comment is left at a specific line in a specific file. In other words: review summaries are *not* considered review comments; refer to &#x60;reviews&#x60;. Comments by the PR author are considered as &#x60;comments&#x60;, not as &#x60;review_comments&#x60;. | [optional] |
| **reviews** | **Integer** | Number of times this PR was reviewed. Reviews by the PR author are not taken into account. | [optional] |
| **merged** | **Time** | When this PR was merged. | [optional] |
| **merged_with_failed_check_runs** | **Array&lt;String&gt;** | PR was merged with these failed check runs. | [optional] |
| **released** | **Time** | When this PR was released. | [optional] |
| **release_url** | **String** | URL of the earliest release that includes this merged PR. | [optional] |
| **deployments** | **Array&lt;String&gt;** | List of deployments that contain this PR. | [optional] |
| **stage_timings** | [**StageTimings**](StageTimings.md) |  |  |
| **events_time_machine** | [**Array&lt;PullRequestEvent&gt;**](PullRequestEvent.md) | List of PR events which happened until &#x60;date_to&#x60;. &#x60;date_from&#x60; does not matter. | [optional] |
| **stages_time_machine** | [**Array&lt;PullRequestStage&gt;**](PullRequestStage.md) | List of PR stages as of &#x60;date_to&#x60; (normally, of length 1). | [optional] |
| **events_now** | [**Array&lt;PullRequestEvent&gt;**](PullRequestEvent.md) | List of PR events that ever happened. |  |
| **stages_now** | [**Array&lt;PullRequestStage&gt;**](PullRequestStage.md) | List of current PR stages (normally, of length 1). |  |
| **participants** | [**Array&lt;PullRequestParticipant&gt;**](PullRequestParticipant.md) | List of developers related to this PR. |  |
| **labels** | [**Array&lt;PullRequestLabel&gt;**](PullRequestLabel.md) | List of PR labels. | [optional] |
| **jira** | [**Array&lt;LinkedJIRAIssue&gt;**](LinkedJIRAIssue.md) | List of linked JIRA issues. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::PullRequest.new(
  repository: null,
  number: null,
  title: null,
  size_added: null,
  size_removed: null,
  files_changed: null,
  created: null,
  updated: null,
  closed: null,
  comments: null,
  commits: null,
  review_requested: null,
  first_review: null,
  approved: null,
  review_comments: null,
  reviews: null,
  merged: null,
  merged_with_failed_check_runs: null,
  released: null,
  release_url: null,
  deployments: null,
  stage_timings: null,
  events_time_machine: null,
  stages_time_machine: null,
  events_now: null,
  stages_now: null,
  participants: null,
  labels: null,
  jira: null
)
```

