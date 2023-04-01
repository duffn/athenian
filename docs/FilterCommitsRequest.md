# Athenian::FilterCommitsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Integer** | Session account ID. |  |
| **date_from** | **Date** | Commits must be made later than or equal to this date. |  |
| **date_to** | **Date** | Commits must be made earlier than or equal to this date. |  |
| **timezone** | **Integer** | Local time zone offset in minutes, used to adjust &#x60;date_from&#x60; and &#x60;date_to&#x60;. | [optional] |
| **_in** | **Array&lt;String&gt;** | Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored. |  |
| **with_author** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. | [optional] |
| **with_committer** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. | [optional] |
| **property** | **String** | Main trait of the commits - the core of the filter. * bypassing_prs: select commits that were pushed without creating a PR * everything: select all the commits matched by the filters * no_pr_merges: select all the commits but PR merges by noreply@github.com |  |
| **only_default_branch** | **Boolean** | Consider only commits that are accessible from the head of the default branch. For example, if your workflow includes PR-ing feature branches, you rebase and merge them and don&#39;t delete afterward, &#x60;bypassing_prs&#x60; will report the commits in those feature branches unless you set &#x60;only_default_branch&#x60; to &#x60;true&#x60;. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::FilterCommitsRequest.new(
  account: null,
  date_from: null,
  date_to: null,
  timezone: null,
  _in: [&quot;github.com/athenianco/athenian-webapp&quot;,&quot;github.com/athenianco/athenian-api&quot;],
  with_author: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;],
  with_committer: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;],
  property: null,
  only_default_branch: null
)
```

