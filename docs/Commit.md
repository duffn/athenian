# Athenian::Commit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author** | [**CommitSignature**](CommitSignature.md) |  |  |
| **children** | **Array&lt;String&gt;** | Hashes of the children. Exists only if &#x60;property &#x3D;&#x3D; everything&#x60;. Note: the direction is from HEAD to the root, i.e. reversed compared to Git.  | [optional] |
| **committer** | [**CommitSignature**](CommitSignature.md) |  |  |
| **deployments** | **Array&lt;String&gt;** | Deployments of the commit. | [optional] |
| **files_changed** | **Integer** | Number of files changed in this PR. |  |
| **hash** | **String** | Git commit hash. |  |
| **message** | **String** | Commit message. |  |
| **repository** | **String** | Repository name which uniquely identifies any repository in any service provider. The format matches the repository URL without the protocol part. No \&quot;.git\&quot; should be appended. We support a special syntax for repository sets: \&quot;{reposet id}\&quot; adds all the repositories from the given set.  |  |
| **size_added** | **Integer** | Overall number of lines added. |  |
| **size_removed** | **Integer** | Overall number of lines removed. |  |

## Example

```ruby
require 'athenian'

instance = Athenian::Commit.new(
  author: null,
  children: null,
  committer: null,
  deployments: null,
  files_changed: null,
  hash: null,
  message: null,
  repository: github.com/athenianco/athenian-webapp,
  size_added: null,
  size_removed: null
)
```

