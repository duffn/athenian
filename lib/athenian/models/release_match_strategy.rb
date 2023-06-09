=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.86 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.86.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0
=end

require 'date'
require 'time'

module Athenian
  class ReleaseMatchStrategy
    BRANCH = 'branch'.freeze
    EVENT = 'event'.freeze
    TAG = 'tag'.freeze
    TAG_OR_BRANCH = 'tag_or_branch'.freeze

    def self.all_vars
      @all_vars ||= [BRANCH, EVENT, TAG, TAG_OR_BRANCH].freeze
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
      return value if ReleaseMatchStrategy.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ReleaseMatchStrategy"
    end
  end
end
