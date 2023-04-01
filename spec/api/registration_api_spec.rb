=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'spec_helper'
require 'json'

# Unit tests for Athenian::RegistrationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RegistrationApi' do
  before do
    # run before each test
    @api_instance = Athenian::RegistrationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RegistrationApi' do
    it 'should create an instance of RegistrationApi' do
      expect(@api_instance).to be_instance_of(Athenian::RegistrationApi)
    end
  end

  # unit tests for accept_invitation
  # 👤 Accept the account membership invitation and finish registration. The user must be already authorized in Auth0.
  # @param body Accepted invitation details.
  # @param [Hash] opts the optional parameters
  # @return [InvitedUser]
  describe 'accept_invitation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for check_invitation
  # Given an invitation URL, get its type (admin or regular account member) and find whether it is correctly formed and is enabled or disabled.
  # @param body Checked invitation details.
  # @param [Hash] opts the optional parameters
  # @return [InvitationCheckResult]
  describe 'check_invitation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for eval_jira_progress
  # Return the current JIRA installation progress in Athenian.
  # @param id Numeric identifier of the account that is installing JIRA.
  # @param [Hash] opts the optional parameters
  # @return [InstallationProgress]
  describe 'eval_jira_progress test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for eval_metadata_progress
  # Return the current GitHub installation progress in Athenian.
  # @param id Numeric identifier of the account that is installing GitHub.
  # @param [Hash] opts the optional parameters
  # @return [InstallationProgress]
  describe 'eval_metadata_progress test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for gen_jira_link
  # 👤 Generate a JIRA integration installation link. The caller must be an admin of the specified account.
  # @param id Numeric identifier of the account who is installing JIRA integration.
  # @param [Hash] opts the optional parameters
  # @return [InvitationLink]
  describe 'gen_jira_link test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for gen_user_invitation
  # 👤 Create an account invitation link for regular users. The caller must be an admin of the specified account. The link is persistent, so multiple calls return the same result. 
  # @param id Numeric identifier of the account where to invite new users.
  # @param [Hash] opts the optional parameters
  # @return [InvitationLink]
  describe 'gen_user_invitation test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
