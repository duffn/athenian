=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.81 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.81.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0
=end

require 'date'
require 'time'

module Athenian
  class JIRAFilterReturn
    EPICS = 'epics'.freeze
    ISSUES = 'issues'.freeze
    ISSUE_BODIES = 'issue_bodies'.freeze
    LABELS = 'labels'.freeze
    ISSUE_TYPES = 'issue_types'.freeze
    PRIORITIES = 'priorities'.freeze
    STATUSES = 'statuses'.freeze
    USERS = 'users'.freeze
    ONLY_FLYING = 'only_flying'.freeze

    def self.all_vars
      @all_vars ||= [EPICS, ISSUES, ISSUE_BODIES, LABELS, ISSUE_TYPES, PRIORITIES, STATUSES, USERS, ONLY_FLYING].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if JIRAFilterReturn.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #JIRAFilterReturn"
    end
  end
end
