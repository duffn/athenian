=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'cgi'

module Athenian
  class AlignApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # 👤 Create a goal template.
    # @param [Hash] opts the optional parameters
    # @option opts [GoalTemplateCreateRequest] :body 
    # @return [CreatedIdentifier]
    def create_goal_template(opts = {})
      data, _status_code, _headers = create_goal_template_with_http_info(opts)
      data
    end

    # 👤 Create a goal template.
    # @param [Hash] opts the optional parameters
    # @option opts [GoalTemplateCreateRequest] :body 
    # @return [Array<(CreatedIdentifier, Integer, Hash)>] CreatedIdentifier data, response status code and response headers
    def create_goal_template_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlignApi.create_goal_template ...'
      end
      # resource path
      local_var_path = '/goal_template/create'

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
        :operation => :"AlignApi.create_goal_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlignApi#create_goal_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 👤 Delete a goal template.
    # @param id [Integer] Numeric identifier of the goal template.
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def delete_goal_template(id, opts = {})
      data, _status_code, _headers = delete_goal_template_with_http_info(id, opts)
      data
    end

    # 👤 Delete a goal template.
    # @param id [Integer] Numeric identifier of the goal template.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def delete_goal_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlignApi.delete_goal_template ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AlignApi.delete_goal_template"
      end
      # resource path
      local_var_path = '/goal_template/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"AlignApi.delete_goal_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlignApi#delete_goal_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a goal template.
    # @param id [Integer] Numeric identifier of the goal template.
    # @param [Hash] opts the optional parameters
    # @return [GoalTemplate]
    def get_goal_template(id, opts = {})
      data, _status_code, _headers = get_goal_template_with_http_info(id, opts)
      data
    end

    # Retrieve a goal template.
    # @param id [Integer] Numeric identifier of the goal template.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GoalTemplate, Integer, Hash)>] GoalTemplate data, response status code and response headers
    def get_goal_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlignApi.get_goal_template ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AlignApi.get_goal_template"
      end
      # resource path
      local_var_path = '/goal_template/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'GoalTemplate'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AlignApi.get_goal_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlignApi#get_goal_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the goal templates for the account.
    # @param id [Integer] Numeric identifier of the account.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_tlo Include templates for TLOs goals, i.e. goals based on parameterized metrics. (default to false)
    # @return [Array<GoalTemplate>]
    def list_goal_templates(id, opts = {})
      data, _status_code, _headers = list_goal_templates_with_http_info(id, opts)
      data
    end

    # List the goal templates for the account.
    # @param id [Integer] Numeric identifier of the account.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_tlo Include templates for TLOs goals, i.e. goals based on parameterized metrics. (default to false)
    # @return [Array<(Array<GoalTemplate>, Integer, Hash)>] Array<GoalTemplate> data, response status code and response headers
    def list_goal_templates_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlignApi.list_goal_templates ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AlignApi.list_goal_templates"
      end
      # resource path
      local_var_path = '/goal_templates/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'include_tlo'] = opts[:'include_tlo'] if !opts[:'include_tlo'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<GoalTemplate>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKeyAuth', 'bearerAuth']

      new_options = opts.merge(
        :operation => :"AlignApi.list_goal_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlignApi#list_goal_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # 👤 Update a goal template.
    # @param id [Integer] Numeric identifier of the goal template.
    # @param [Hash] opts the optional parameters
    # @option opts [GoalTemplateUpdateRequest] :body 
    # @return [Object]
    def update_goal_template(id, opts = {})
      data, _status_code, _headers = update_goal_template_with_http_info(id, opts)
      data
    end

    # 👤 Update a goal template.
    # @param id [Integer] Numeric identifier of the goal template.
    # @param [Hash] opts the optional parameters
    # @option opts [GoalTemplateUpdateRequest] :body 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def update_goal_template_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AlignApi.update_goal_template ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling AlignApi.update_goal_template"
      end
      # resource path
      local_var_path = '/goal_template/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
        :operation => :"AlignApi.update_goal_template",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AlignApi#update_goal_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
