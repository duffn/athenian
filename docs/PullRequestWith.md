# Athenian::PullRequestWith

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. | [optional] |
| **reviewer** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. | [optional] |
| **commit_author** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. | [optional] |
| **commit_committer** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. | [optional] |
| **commenter** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. | [optional] |
| **merger** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. | [optional] |
| **releaser** | **Array&lt;String&gt;** | A set of developers. An empty list disables the filter and includes everybody. Duplicates are automatically ignored. | [optional] |

## Example

```ruby
require 'athenian'

instance = Athenian::PullRequestWith.new(
  author: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;],
  reviewer: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;],
  commit_author: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;],
  commit_committer: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;],
  commenter: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;],
  merger: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;],
  releaser: [&quot;github.com/vmarkovtsev&quot;,&quot;github.com/dpordomingo&quot;]
)
```

