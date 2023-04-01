=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'cgi'

module Athenian
  class TeamApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 👤 Create a team. Admin is not required.
    # @param [Hash] opts the optional parameters
    # @option opts [TeamCreateRequest] :body 
    # @return [CreatedIdentifier]
    def create_team(opts = {})
      data, _status_code, _headers = create_team_with_http_info(opts)
      data
    end

    # 👤 Create a team. Admin is not required.
    # @param [Hash] opts the optional parameters
    # @option opts [TeamCreateRequest] :body 
    # @return [Array<(CreatedIdentifier, Integer, Hash)>] CreatedIdentifier data, response status code and response headers
    def create_team_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.create_team ...'
      end
      # resource path
      local_var_path = '/team/create'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreatedIdentifier'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TeamApi.create_team",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#create_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 👤 Delete a team.
    # @param id [Integer] Numeric identifier of the team to delete.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_team(id, opts = {})
      data, _status_code, _headers = delete_team_with_http_info(id, opts)
      data
    end

    # 👤 Delete a team.
    # @param id [Integer] Numeric identifier of the team to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_team_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.delete_team ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamApi.delete_team"
      end
      # resource path
      local_var_path = '/team/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TeamApi.delete_team",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#delete_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the team's members. The user must belong to the account that owns the team.
    # @param id [Integer] Numeric identifier of the team to list.
    # @param [Hash] opts the optional parameters
    # @return [Team]
    def get_team(id, opts = {})
      data, _status_code, _headers = get_team_with_http_info(id, opts)
      data
    end

    # List the team&#39;s members. The user must belong to the account that owns the team.
    # @param id [Integer] Numeric identifier of the team to list.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Team, Integer, Hash)>] Team data, response status code and response headers
    def get_team_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.get_team ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamApi.get_team"
      end
      # resource path
      local_var_path = '/team/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Team'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TeamApi.get_team",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#get_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the teams belonging to the calling user.
    # @param id [Integer] Numeric identifier of the account.
    # @param [Hash] opts the optional parameters
    # @return [Array<Team>]
    def list_teams(id, opts = {})
      data, _status_code, _headers = list_teams_with_http_info(id, opts)
      data
    end

    # List the teams belonging to the calling user.
    # @param id [Integer] Numeric identifier of the account.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Team>, Integer, Hash)>] Array<Team> data, response status code and response headers
    def list_teams_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.list_teams ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamApi.list_teams"
      end
      # resource path
      local_var_path = '/teams/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Team>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TeamApi.list_teams",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#list_teams\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 🛡️ Delete all the teams belonging to the account and then clone from GitHub. The \"Bots\" team will remain intact. The rest of the teams will be identical to what's on GitHub.
    # @param id [Integer] Numeric identifier of the account.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :unmapped Delete teams that are not backed by GitHub.
    # @return [Array<Team>]
    def resync_teams(id, opts = {})
      data, _status_code, _headers = resync_teams_with_http_info(id, opts)
      data
    end

    # 🛡️ Delete all the teams belonging to the account and then clone from GitHub. The \&quot;Bots\&quot; team will remain intact. The rest of the teams will be identical to what&#39;s on GitHub.
    # @param id [Integer] Numeric identifier of the account.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :unmapped Delete teams that are not backed by GitHub.
    # @return [Array<(Array<Team>, Integer, Hash)>] Array<Team> data, response status code and response headers
    def resync_teams_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.resync_teams ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamApi.resync_teams"
      end
      # resource path
      local_var_path = '/teams/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'unmapped'] = opts[:'unmapped'] if !opts[:'unmapped'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Team>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"TeamApi.resync_teams",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#resync_teams\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 👤 Update a team.
    # @param id [Integer] Numeric identifier of the team to update.
    # @param [Hash] opts the optional parameters
    # @option opts [TeamUpdateRequest] :body 
    # @return [Object]
    def update_team(id, opts = {})
      data, _status_code, _headers = update_team_with_http_info(id, opts)
      data
    end

    # 👤 Update a team.
    # @param id [Integer] Numeric identifier of the team to update.
    # @param [Hash] opts the optional parameters
    # @option opts [TeamUpdateRequest] :body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_team_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TeamApi.update_team ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TeamApi.update_team"
      end
      # resource path
      local_var_path = '/team/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'body'])

      # return_type
      return_type = opts[:debug_return_type] || 'Object'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"TeamApi.update_team",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TeamApi#update_team\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
