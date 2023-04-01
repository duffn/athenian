=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Athenian::UserApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @api_instance = Athenian::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instance of UserApi' do
      expect(@api_instance).to be_instance_of(Athenian::UserApi)
    end
  end

  # unit tests for change_user
  # 🛡️👤 Change the status of an account member: regular, admin, or banished (deleted). This endpoint is allowed only for account admins.
  # @param [Hash] opts the optional parameters
  # @option opts [AccountUserChangeRequest] :body 
  # @return [Account]
  describe 'change_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_details
  # List the calling user&#39;s account members and installed GitHub and JIRA organizations.
  # @param id Numeric identifier of the account. The user must belong to that account. To find out which accounts the user belongs to, see &#x60;/user&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [Account]
  describe 'get_account_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_features
  # List the product features enabled for the account.
  # @param id Numeric identifier of the account. The user must belong to that account. To find out which accounts the user belongs to, see &#x60;/user&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [Array<ProductFeature>]
  describe 'get_account_features test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_share
  # 👤 Load the previously saved state of the UI views.
  # @param id Reference to the share previously saved by &#x60;PUT /share&#x60;.
  # @param [Hash] opts the optional parameters
  # @return [Share]
  describe 'get_share test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user
  # Show details about the calling user.
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'get_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for save_share
  # 👤 Save the state of UI views and return a reference.
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :body 
  # @return [String]
  describe 'save_share test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
