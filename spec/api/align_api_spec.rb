=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Athenian::AlignApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AlignApi' do
  before do
    # run before each test
    @api_instance = Athenian::AlignApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AlignApi' do
    it 'should create an instance of AlignApi' do
      expect(@api_instance).to be_instance_of(Athenian::AlignApi)
    end
  end

  # unit tests for create_goal_template
  # 👤 Create a goal template.
  # @param [Hash] opts the optional parameters
  # @option opts [GoalTemplateCreateRequest] :body 
  # @return [CreatedIdentifier]
  describe 'create_goal_template test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_goal_template
  # 👤 Delete a goal template.
  # @param id Numeric identifier of the goal template.
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_goal_template test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_goal_template
  # Retrieve a goal template.
  # @param id Numeric identifier of the goal template.
  # @param [Hash] opts the optional parameters
  # @return [GoalTemplate]
  describe 'get_goal_template test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_goal_templates
  # List the goal templates for the account.
  # @param id Numeric identifier of the account.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_tlo Include templates for TLOs goals, i.e. goals based on parameterized metrics.
  # @return [Array<GoalTemplate>]
  describe 'list_goal_templates test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_goal_template
  # 👤 Update a goal template.
  # @param id Numeric identifier of the goal template.
  # @param [Hash] opts the optional parameters
  # @option opts [GoalTemplateUpdateRequest] :body 
  # @return [Object]
  describe 'update_goal_template test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
