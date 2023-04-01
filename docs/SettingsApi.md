# Athenian::SettingsApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_logical_repository**](SettingsApi.md#delete_logical_repository) | **POST** /settings/logical_repository/delete | 🛡️ Delete a logical repository. |
| [**delete_work_type**](SettingsApi.md#delete_work_type) | **POST** /settings/work_type/delete | 👤 Remove the work type given the name. |
| [**get_jira_identities**](SettingsApi.md#get_jira_identities) | **GET** /settings/jira/identities/{id} | Fetch the GitHub&lt;&gt;JIRA user identity mapping. |
| [**get_jira_projects**](SettingsApi.md#get_jira_projects) | **GET** /settings/jira/projects/{id} | List the currently enabled JIRA project settings. |
| [**get_work_type**](SettingsApi.md#get_work_type) | **POST** /settings/work_type/get | Fetch the definition of the work type given the name. |
| [**list_logical_repositories**](SettingsApi.md#list_logical_repositories) | **GET** /settings/logical_repositories/{id} | List the currently configured logical repositories. A logical repository is a set of rules to match PRs, releases, and deployments that has a name and pretends to be a regular GitHub repository everywhere in UI and API requests. This feature is particularly useful to reap monorepos into separate, joint or disjoint parts.  |
| [**list_release_match_settings**](SettingsApi.md#list_release_match_settings) | **GET** /settings/release_match/{id} | List the current release matching settings. Release settings are rules by which to mark releases in GitHub repositories.  |
| [**list_work_types**](SettingsApi.md#list_work_types) | **GET** /settings/work_types/{id} | List the current work types - rule sets to group PRs, releases, etc. together. |
| [**set_jira_identities**](SettingsApi.md#set_jira_identities) | **PATCH** /settings/jira/identities | 👤 Add, remove or override GitHub&lt;&gt;JIRA user identity mapping. |
| [**set_jira_projects**](SettingsApi.md#set_jira_projects) | **PUT** /settings/jira/projects | 🛡️👤 Set the enabled JIRA projects. |
| [**set_logical_repository**](SettingsApi.md#set_logical_repository) | **PUT** /settings/logical_repository | 🛡️👤 Insert or update a logical repository - a named set of rules to match PRs, releases, and deployments that pretends to be a regular GitHub repository everywhere in UI and API requests.  |
| [**set_release_match**](SettingsApi.md#set_release_match) | **PUT** /settings/release_match | 👤 Set the release matching rule for a list of repositories. Only for account admins. Release settings are rules by which to mark releases in GitHub repositories.  |
| [**set_work_type**](SettingsApi.md#set_work_type) | **PUT** /settings/work_type | 👤 Create or update a work type - a rule set to group PRs, releases, etc. together. |


## delete_logical_repository

> Object delete_logical_repository(opts)

🛡️ Delete a logical repository.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
opts = {
  body: Athenian::LogicalRepositoryGetRequest.new({account: 37, name: 'github.com/athenianco/athenian-webapp'}) # LogicalRepositoryGetRequest | 
}

begin
  # 🛡️ Delete a logical repository.
  result = api_instance.delete_logical_repository(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->delete_logical_repository: #{e}"
end
```

#### Using the delete_logical_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_logical_repository_with_http_info(opts)

```ruby
begin
  # 🛡️ Delete a logical repository.
  data, status_code, headers = api_instance.delete_logical_repository_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->delete_logical_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogicalRepositoryGetRequest**](LogicalRepositoryGetRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_work_type

> Object delete_work_type(opts)

👤 Remove the work type given the name.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
opts = {
  body: Athenian::WorkTypeGetRequest.new({account: 37, name: 'name_example'}) # WorkTypeGetRequest | 
}

begin
  # 👤 Remove the work type given the name.
  result = api_instance.delete_work_type(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->delete_work_type: #{e}"
end
```

#### Using the delete_work_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_work_type_with_http_info(opts)

```ruby
begin
  # 👤 Remove the work type given the name.
  data, status_code, headers = api_instance.delete_work_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->delete_work_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**WorkTypeGetRequest**](WorkTypeGetRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_jira_identities

> <Array<MappedJIRAIdentity>> get_jira_identities(id)

Fetch the GitHub<>JIRA user identity mapping.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
id = 56 # Integer | Numeric identifier of the account.

begin
  # Fetch the GitHub<>JIRA user identity mapping.
  result = api_instance.get_jira_identities(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->get_jira_identities: #{e}"
end
```

#### Using the get_jira_identities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MappedJIRAIdentity>>, Integer, Hash)> get_jira_identities_with_http_info(id)

```ruby
begin
  # Fetch the GitHub<>JIRA user identity mapping.
  data, status_code, headers = api_instance.get_jira_identities_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MappedJIRAIdentity>>
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->get_jira_identities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |

### Return type

[**Array&lt;MappedJIRAIdentity&gt;**](MappedJIRAIdentity.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_jira_projects

> <Array<JIRAProject>> get_jira_projects(id)

List the currently enabled JIRA project settings.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
id = 56 # Integer | Numeric identifier of the account.

begin
  # List the currently enabled JIRA project settings.
  result = api_instance.get_jira_projects(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->get_jira_projects: #{e}"
end
```

#### Using the get_jira_projects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<JIRAProject>>, Integer, Hash)> get_jira_projects_with_http_info(id)

```ruby
begin
  # List the currently enabled JIRA project settings.
  data, status_code, headers = api_instance.get_jira_projects_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<JIRAProject>>
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->get_jira_projects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |

### Return type

[**Array&lt;JIRAProject&gt;**](JIRAProject.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_work_type

> <WorkType> get_work_type(opts)

Fetch the definition of the work type given the name.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
opts = {
  body: Athenian::WorkTypeGetRequest.new({account: 37, name: 'name_example'}) # WorkTypeGetRequest | 
}

begin
  # Fetch the definition of the work type given the name.
  result = api_instance.get_work_type(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->get_work_type: #{e}"
end
```

#### Using the get_work_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkType>, Integer, Hash)> get_work_type_with_http_info(opts)

```ruby
begin
  # Fetch the definition of the work type given the name.
  data, status_code, headers = api_instance.get_work_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkType>
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->get_work_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**WorkTypeGetRequest**](WorkTypeGetRequest.md) |  | [optional] |

### Return type

[**WorkType**](WorkType.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_logical_repositories

> <Array<LogicalRepository>> list_logical_repositories(id)

List the currently configured logical repositories. A logical repository is a set of rules to match PRs, releases, and deployments that has a name and pretends to be a regular GitHub repository everywhere in UI and API requests. This feature is particularly useful to reap monorepos into separate, joint or disjoint parts. 

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
id = 56 # Integer | Numeric identifier of the account.

begin
  # List the currently configured logical repositories. A logical repository is a set of rules to match PRs, releases, and deployments that has a name and pretends to be a regular GitHub repository everywhere in UI and API requests. This feature is particularly useful to reap monorepos into separate, joint or disjoint parts. 
  result = api_instance.list_logical_repositories(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->list_logical_repositories: #{e}"
end
```

#### Using the list_logical_repositories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LogicalRepository>>, Integer, Hash)> list_logical_repositories_with_http_info(id)

```ruby
begin
  # List the currently configured logical repositories. A logical repository is a set of rules to match PRs, releases, and deployments that has a name and pretends to be a regular GitHub repository everywhere in UI and API requests. This feature is particularly useful to reap monorepos into separate, joint or disjoint parts. 
  data, status_code, headers = api_instance.list_logical_repositories_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LogicalRepository>>
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->list_logical_repositories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |

### Return type

[**Array&lt;LogicalRepository&gt;**](LogicalRepository.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_release_match_settings

> <Hash<String, ReleaseMatchSetting>> list_release_match_settings(id)

List the current release matching settings. Release settings are rules by which to mark releases in GitHub repositories. 

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
id = 56 # Integer | Numeric identifier of the account.

begin
  # List the current release matching settings. Release settings are rules by which to mark releases in GitHub repositories. 
  result = api_instance.list_release_match_settings(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->list_release_match_settings: #{e}"
end
```

#### Using the list_release_match_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, ReleaseMatchSetting>>, Integer, Hash)> list_release_match_settings_with_http_info(id)

```ruby
begin
  # List the current release matching settings. Release settings are rules by which to mark releases in GitHub repositories. 
  data, status_code, headers = api_instance.list_release_match_settings_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, ReleaseMatchSetting>>
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->list_release_match_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |

### Return type

[**Hash&lt;String, ReleaseMatchSetting&gt;**](ReleaseMatchSetting.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_work_types

> <Array<WorkType>> list_work_types(id)

List the current work types - rule sets to group PRs, releases, etc. together.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure API key authorization: apiKeyAuth
  config.api_key['apiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKeyAuth'] = 'Bearer'

  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
id = 56 # Integer | Numeric identifier of the account.

begin
  # List the current work types - rule sets to group PRs, releases, etc. together.
  result = api_instance.list_work_types(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->list_work_types: #{e}"
end
```

#### Using the list_work_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WorkType>>, Integer, Hash)> list_work_types_with_http_info(id)

```ruby
begin
  # List the current work types - rule sets to group PRs, releases, etc. together.
  data, status_code, headers = api_instance.list_work_types_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WorkType>>
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->list_work_types_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |

### Return type

[**Array&lt;WorkType&gt;**](WorkType.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_jira_identities

> <Array<MappedJIRAIdentity>> set_jira_identities(opts)

👤 Add, remove or override GitHub<>JIRA user identity mapping.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
opts = {
  body: Athenian::SetMappedJIRAIdentitiesRequest.new({account: 37, changes: [Athenian::MappedJIRAIdentityChange.new({developer_id: 'github.com/vmarkovtsev', jira_name: 'jira_name_example'})]}) # SetMappedJIRAIdentitiesRequest | 
}

begin
  # 👤 Add, remove or override GitHub<>JIRA user identity mapping.
  result = api_instance.set_jira_identities(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->set_jira_identities: #{e}"
end
```

#### Using the set_jira_identities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MappedJIRAIdentity>>, Integer, Hash)> set_jira_identities_with_http_info(opts)

```ruby
begin
  # 👤 Add, remove or override GitHub<>JIRA user identity mapping.
  data, status_code, headers = api_instance.set_jira_identities_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MappedJIRAIdentity>>
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->set_jira_identities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**SetMappedJIRAIdentitiesRequest**](SetMappedJIRAIdentitiesRequest.md) |  | [optional] |

### Return type

[**Array&lt;MappedJIRAIdentity&gt;**](MappedJIRAIdentity.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_jira_projects

> <Array<JIRAProject>> set_jira_projects(opts)

🛡️👤 Set the enabled JIRA projects.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
opts = {
  body: Athenian::JIRAProjectsRequest.new({account: 37, projects: { key: false}}) # JIRAProjectsRequest | 
}

begin
  # 🛡️👤 Set the enabled JIRA projects.
  result = api_instance.set_jira_projects(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->set_jira_projects: #{e}"
end
```

#### Using the set_jira_projects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<JIRAProject>>, Integer, Hash)> set_jira_projects_with_http_info(opts)

```ruby
begin
  # 🛡️👤 Set the enabled JIRA projects.
  data, status_code, headers = api_instance.set_jira_projects_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<JIRAProject>>
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->set_jira_projects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**JIRAProjectsRequest**](JIRAProjectsRequest.md) |  | [optional] |

### Return type

[**Array&lt;JIRAProject&gt;**](JIRAProject.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_logical_repository

> <LogicalRepository> set_logical_repository(opts)

🛡️👤 Insert or update a logical repository - a named set of rules to match PRs, releases, and deployments that pretends to be a regular GitHub repository everywhere in UI and API requests. 

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
opts = {
  body: Athenian::LogicalRepositoryRequest.new({account: 37, name: 'name_example', parent: 'github.com/athenianco/athenian-webapp', prs: Athenian::LogicalPRRules.new, releases: Athenian::ReleaseMatchSetting.new({branches: '.*-production', tags: '.*', match: Athenian::ReleaseMatchStrategy::BRANCH})}) # LogicalRepositoryRequest | 
}

begin
  # 🛡️👤 Insert or update a logical repository - a named set of rules to match PRs, releases, and deployments that pretends to be a regular GitHub repository everywhere in UI and API requests. 
  result = api_instance.set_logical_repository(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->set_logical_repository: #{e}"
end
```

#### Using the set_logical_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogicalRepository>, Integer, Hash)> set_logical_repository_with_http_info(opts)

```ruby
begin
  # 🛡️👤 Insert or update a logical repository - a named set of rules to match PRs, releases, and deployments that pretends to be a regular GitHub repository everywhere in UI and API requests. 
  data, status_code, headers = api_instance.set_logical_repository_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogicalRepository>
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->set_logical_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**LogicalRepositoryRequest**](LogicalRepositoryRequest.md) |  | [optional] |

### Return type

[**LogicalRepository**](LogicalRepository.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_release_match

> Array&lt;String&gt; set_release_match(opts)

👤 Set the release matching rule for a list of repositories. Only for account admins. Release settings are rules by which to mark releases in GitHub repositories. 

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
opts = {
  body: Athenian::ReleaseMatchRequest.new({account: 37, repositories: ["github.com/athenianco/athenian-webapp", "github.com/athenianco/athenian-api"], match: Athenian::ReleaseMatchStrategy::BRANCH}) # ReleaseMatchRequest | 
}

begin
  # 👤 Set the release matching rule for a list of repositories. Only for account admins. Release settings are rules by which to mark releases in GitHub repositories. 
  result = api_instance.set_release_match(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->set_release_match: #{e}"
end
```

#### Using the set_release_match_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Array&lt;String&gt;, Integer, Hash)> set_release_match_with_http_info(opts)

```ruby
begin
  # 👤 Set the release matching rule for a list of repositories. Only for account admins. Release settings are rules by which to mark releases in GitHub repositories. 
  data, status_code, headers = api_instance.set_release_match_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Array&lt;String&gt;
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->set_release_match_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**ReleaseMatchRequest**](ReleaseMatchRequest.md) |  | [optional] |

### Return type

**Array&lt;String&gt;**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_work_type

> <WorkType> set_work_type(opts)

👤 Create or update a work type - a rule set to group PRs, releases, etc. together.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::SettingsApi.new
opts = {
  body: Athenian::WorkTypePutRequest.new({account: 37, work_type: Athenian::WorkType.new({name: 'name_example', color: 'color_example', rules: [Athenian::WorkTypeRule.new({name: 'name_example', body: 3.56})]})}) # WorkTypePutRequest | 
}

begin
  # 👤 Create or update a work type - a rule set to group PRs, releases, etc. together.
  result = api_instance.set_work_type(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->set_work_type: #{e}"
end
```

#### Using the set_work_type_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkType>, Integer, Hash)> set_work_type_with_http_info(opts)

```ruby
begin
  # 👤 Create or update a work type - a rule set to group PRs, releases, etc. together.
  data, status_code, headers = api_instance.set_work_type_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkType>
rescue Athenian::ApiError => e
  puts "Error when calling SettingsApi->set_work_type_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**WorkTypePutRequest**](WorkTypePutRequest.md) |  | [optional] |

### Return type

[**WorkType**](WorkType.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

