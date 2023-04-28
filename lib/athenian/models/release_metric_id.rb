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
  class ReleaseMetricID
    COUNT = 'release-count'.freeze
    TAG_COUNT = 'release-tag-count'.freeze
    BRANCH_COUNT = 'release-branch-count'.freeze
    PRS = 'release-prs'.freeze
    TAG_PRS = 'release-tag-prs'.freeze
    BRANCH_PRS = 'release-branch-prs'.freeze
    COMMITS = 'release-commits'.freeze
    TAG_COMMITS = 'release-tag-commits'.freeze
    BRANCH_COMMITS = 'release-branch-commits'.freeze
    LINES = 'release-lines'.freeze
    TAG_LINES = 'release-tag-lines'.freeze
    BRANCH_LINES = 'release-branch-lines'.freeze
    AVG_PRS = 'release-avg-prs'.freeze
    TAG_AVG_PRS = 'release-tag-avg-prs'.freeze
    BRANCH_AVG_PRS = 'release-branch-avg-prs'.freeze
    AVG_COMMITS = 'release-avg-commits'.freeze
    TAG_AVG_COMMITS = 'release-tag-avg-commits'.freeze
    BRANCH_AVG_COMMITS = 'release-branch-avg-commits'.freeze
    AVG_LINES = 'release-avg-lines'.freeze
    TAG_AVG_LINES = 'release-tag-avg-lines'.freeze
    BRANCH_AVG_LINES = 'release-branch-avg-lines'.freeze
    AGE = 'release-age'.freeze
    TAG_AGE = 'release-tag-age'.freeze
    BRANCH_AGE = 'release-branch-age'.freeze
    TIME_TO_DEPLOY = 'release-time-to-deploy'.freeze

    def self.all_vars
      @all_vars ||= [COUNT, TAG_COUNT, BRANCH_COUNT, PRS, TAG_PRS, BRANCH_PRS, COMMITS, TAG_COMMITS, BRANCH_COMMITS, LINES, TAG_LINES, BRANCH_LINES, AVG_PRS, TAG_AVG_PRS, BRANCH_AVG_PRS, AVG_COMMITS, TAG_AVG_COMMITS, BRANCH_AVG_COMMITS, AVG_LINES, TAG_AVG_LINES, BRANCH_AVG_LINES, AGE, TAG_AGE, BRANCH_AGE, TIME_TO_DEPLOY].freeze
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
      return value if ReleaseMetricID.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ReleaseMetricID"
    end
  end
end
