# Athenian::TeamApi

All URIs are relative to *https://api.athenian.co/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_team**](TeamApi.md#create_team) | **POST** /team/create | 👤 Create a team. Admin is not required. |
| [**delete_team**](TeamApi.md#delete_team) | **DELETE** /team/{id} | 👤 Delete a team. |
| [**get_team**](TeamApi.md#get_team) | **GET** /team/{id} | List the team&#39;s members. The user must belong to the account that owns the team. |
| [**list_teams**](TeamApi.md#list_teams) | **GET** /teams/{id} | List the teams belonging to the calling user. |
| [**resync_teams**](TeamApi.md#resync_teams) | **DELETE** /teams/{id} | 🛡️ Delete all the teams belonging to the account and then clone from GitHub. The \&quot;Bots\&quot; team will remain intact. The rest of the teams will be identical to what&#39;s on GitHub. |
| [**update_team**](TeamApi.md#update_team) | **PUT** /team/{id} | 👤 Update a team. |


## create_team

> <CreatedIdentifier> create_team(opts)

👤 Create a team. Admin is not required.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::TeamApi.new
opts = {
  body: Athenian::TeamCreateRequest.new({account: 37, name: 'name_example', members: ["github.com/vmarkovtsev", "github.com/dpordomingo"], parent: 37}) # TeamCreateRequest | 
}

begin
  # 👤 Create a team. Admin is not required.
  result = api_instance.create_team(opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->create_team: #{e}"
end
```

#### Using the create_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatedIdentifier>, Integer, Hash)> create_team_with_http_info(opts)

```ruby
begin
  # 👤 Create a team. Admin is not required.
  data, status_code, headers = api_instance.create_team_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatedIdentifier>
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->create_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body** | [**TeamCreateRequest**](TeamCreateRequest.md) |  | [optional] |

### Return type

[**CreatedIdentifier**](CreatedIdentifier.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_team

> Object delete_team(id)

👤 Delete a team.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::TeamApi.new
id = 56 # Integer | Numeric identifier of the team to delete.

begin
  # 👤 Delete a team.
  result = api_instance.delete_team(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->delete_team: #{e}"
end
```

#### Using the delete_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> delete_team_with_http_info(id)

```ruby
begin
  # 👤 Delete a team.
  data, status_code, headers = api_instance.delete_team_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->delete_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the team to delete. |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_team

> <Team> get_team(id)

List the team's members. The user must belong to the account that owns the team.

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

api_instance = Athenian::TeamApi.new
id = 56 # Integer | Numeric identifier of the team to list.

begin
  # List the team's members. The user must belong to the account that owns the team.
  result = api_instance.get_team(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->get_team: #{e}"
end
```

#### Using the get_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Team>, Integer, Hash)> get_team_with_http_info(id)

```ruby
begin
  # List the team's members. The user must belong to the account that owns the team.
  data, status_code, headers = api_instance.get_team_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Team>
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->get_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the team to list. |  |

### Return type

[**Team**](Team.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_teams

> <Array<Team>> list_teams(id)

List the teams belonging to the calling user.

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

api_instance = Athenian::TeamApi.new
id = 56 # Integer | Numeric identifier of the account.

begin
  # List the teams belonging to the calling user.
  result = api_instance.list_teams(id)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->list_teams: #{e}"
end
```

#### Using the list_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Team>>, Integer, Hash)> list_teams_with_http_info(id)

```ruby
begin
  # List the teams belonging to the calling user.
  data, status_code, headers = api_instance.list_teams_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Team>>
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->list_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |

### Return type

[**Array&lt;Team&gt;**](Team.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resync_teams

> <Array<Team>> resync_teams(id, opts)

🛡️ Delete all the teams belonging to the account and then clone from GitHub. The \"Bots\" team will remain intact. The rest of the teams will be identical to what's on GitHub.

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

api_instance = Athenian::TeamApi.new
id = 56 # Integer | Numeric identifier of the account.
opts = {
  unmapped: true # Boolean | Delete teams that are not backed by GitHub.
}

begin
  # 🛡️ Delete all the teams belonging to the account and then clone from GitHub. The \"Bots\" team will remain intact. The rest of the teams will be identical to what's on GitHub.
  result = api_instance.resync_teams(id, opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->resync_teams: #{e}"
end
```

#### Using the resync_teams_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Team>>, Integer, Hash)> resync_teams_with_http_info(id, opts)

```ruby
begin
  # 🛡️ Delete all the teams belonging to the account and then clone from GitHub. The \"Bots\" team will remain intact. The rest of the teams will be identical to what's on GitHub.
  data, status_code, headers = api_instance.resync_teams_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Team>>
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->resync_teams_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the account. |  |
| **unmapped** | **Boolean** | Delete teams that are not backed by GitHub. | [optional] |

### Return type

[**Array&lt;Team&gt;**](Team.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_team

> Object update_team(id, opts)

👤 Update a team.

### Examples

```ruby
require 'time'
require 'athenian'
# setup authorization
Athenian.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Athenian::TeamApi.new
id = 56 # Integer | Numeric identifier of the team to update.
opts = {
  body: Athenian::TeamUpdateRequest.new({name: 'name_example', members: ["github.com/vmarkovtsev", "github.com/dpordomingo"], parent: 37}) # TeamUpdateRequest | 
}

begin
  # 👤 Update a team.
  result = api_instance.update_team(id, opts)
  p result
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->update_team: #{e}"
end
```

#### Using the update_team_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> update_team_with_http_info(id, opts)

```ruby
begin
  # 👤 Update a team.
  data, status_code, headers = api_instance.update_team_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Athenian::ApiError => e
  puts "Error when calling TeamApi->update_team_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Numeric identifier of the team to update. |  |
| **body** | [**TeamUpdateRequest**](TeamUpdateRequest.md) |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

