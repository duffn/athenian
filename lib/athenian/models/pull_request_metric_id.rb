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
  class PullRequestMetricID
    WIP_TIME = 'pr-wip-time'.freeze
    WIP_TIME_BELOW_THRESHOLD_RATIO = 'pr-wip-time-below-threshold-ratio'.freeze
    WIP_COUNT = 'pr-wip-count'.freeze
    WIP_COUNT_Q = 'pr-wip-count-q'.freeze
    REVIEW_TIME = 'pr-review-time'.freeze
    REVIEW_COUNT = 'pr-review-count'.freeze
    REVIEW_COUNT_Q = 'pr-review-count-q'.freeze
    REVIEW_TIME_BELOW_THRESHOLD_RATIO = 'pr-review-time-below-threshold-ratio'.freeze
    MERGING_TIME = 'pr-merging-time'.freeze
    MERGING_TIME_BELOW_THRESHOLD_RATIO = 'pr-merging-time-below-threshold-ratio'.freeze
    MERGING_COUNT = 'pr-merging-count'.freeze
    MERGING_COUNT_Q = 'pr-merging-count-q'.freeze
    RELEASE_TIME = 'pr-release-time'.freeze
    RELEASE_COUNT = 'pr-release-count'.freeze
    RELEASE_COUNT_Q = 'pr-release-count-q'.freeze
    OPEN_TIME = 'pr-open-time'.freeze
    OPEN_COUNT = 'pr-open-count'.freeze
    OPEN_COUNT_Q = 'pr-open-count-q'.freeze
    OPEN_TIME_BELOW_THRESHOLD_RATIO = 'pr-open-time-below-threshold-ratio'.freeze
    LEAD_TIME = 'pr-lead-time'.freeze
    LEAD_TIME_BELOW_THRESHOLD_RATIO = 'pr-lead-time-below-threshold-ratio'.freeze
    LEAD_COUNT = 'pr-lead-count'.freeze
    LEAD_COUNT_Q = 'pr-lead-count-q'.freeze
    CYCLE_TIME = 'pr-cycle-time'.freeze
    CYCLE_TIME_BELOW_THRESHOLD_RATIO = 'pr-cycle-time-below-threshold-ratio'.freeze
    CYCLE_COUNT = 'pr-cycle-count'.freeze
    CYCLE_COUNT_Q = 'pr-cycle-count-q'.freeze
    LIVE_CYCLE_TIME = 'pr-live-cycle-time'.freeze
    LIVE_CYCLE_COUNT = 'pr-live-cycle-count'.freeze
    LIVE_CYCLE_COUNT_Q = 'pr-live-cycle-count-q'.freeze
    ALL_COUNT = 'pr-all-count'.freeze
    WAIT_FIRST_REVIEW_TIME = 'pr-wait-first-review-time'.freeze
    WAIT_FIRST_REVIEW_COUNT = 'pr-wait-first-review-count'.freeze
    WAIT_FIRST_REVIEW_COUNT_Q = 'pr-wait-first-review-count-q'.freeze
    WAIT_FIRST_REVIEW_TIME_BELOW_THRESHOLD_RATIO = 'pr-wait-first-review-time-below-threshold-ratio'.freeze
    DEPLOYMENT_TIME = 'pr-deployment-time'.freeze
    DEPLOYMENT_COUNT = 'pr-deployment-count'.freeze
    DEPLOYMENT_COUNT_Q = 'pr-deployment-count-q'.freeze
    LEAD_DEPLOYMENT_TIME = 'pr-lead-deployment-time'.freeze
    LEAD_DEPLOYMENT_COUNT = 'pr-lead-deployment-count'.freeze
    LEAD_DEPLOYMENT_COUNT_Q = 'pr-lead-deployment-count-q'.freeze
    CYCLE_DEPLOYMENT_TIME = 'pr-cycle-deployment-time'.freeze
    CYCLE_DEPLOYMENT_COUNT = 'pr-cycle-deployment-count'.freeze
    CYCLE_DEPLOYMENT_COUNT_Q = 'pr-cycle-deployment-count-q'.freeze
    CYCLE_DEPLOYMENT_TIME_BELOW_THRESHOLD_RATIO = 'pr-cycle-deployment-time-below-threshold-ratio'.freeze
    FLOW_RATIO = 'pr-flow-ratio'.freeze
    OPENED = 'pr-opened'.freeze
    REVIEWED = 'pr-reviewed'.freeze
    REVIEWED_CLOSED = 'pr-reviewed-closed'.freeze
    NOT_REVIEWED = 'pr-not-reviewed'.freeze
    REVIEWED_RATIO = 'pr-reviewed-ratio'.freeze
    MERGED = 'pr-merged'.freeze
    REJECTED = 'pr-rejected'.freeze
    CLOSED = 'pr-closed'.freeze
    DONE = 'pr-done'.freeze
    SIZE = 'pr-size'.freeze
    SIZE_BELOW_THRESHOLD_RATIO = 'pr-size-below-threshold-ratio'.freeze
    MEDIAN_SIZE = 'pr-median-size'.freeze
    WIP_PENDING_COUNT = 'pr-wip-pending-count'.freeze
    REVIEW_PENDING_COUNT = 'pr-review-pending-count'.freeze
    MERGING_PENDING_COUNT = 'pr-merging-pending-count'.freeze
    RELEASE_PENDING_COUNT = 'pr-release-pending-count'.freeze
    OPENED_MAPPED_TO_JIRA = 'pr-opened-mapped-to-jira'.freeze
    DONE_MAPPED_TO_JIRA = 'pr-done-mapped-to-jira'.freeze
    ALL_MAPPED_TO_JIRA = 'pr-all-mapped-to-jira'.freeze
    PARTICIPANTS_PER = 'pr-participants-per'.freeze
    REVIEW_COMMENTS_PER = 'pr-review-comments-per'.freeze
    REVIEW_COMMENTS_PER_ABOVE_THRESHOLD_RATIO = 'pr-review-comments-per-above-threshold-ratio'.freeze
    REVIEWS_PER = 'pr-reviews-per'.freeze
    COMMENTS_PER = 'pr-comments-per'.freeze

    def self.all_vars
      @all_vars ||= [WIP_TIME, WIP_TIME_BELOW_THRESHOLD_RATIO, WIP_COUNT, WIP_COUNT_Q, REVIEW_TIME, REVIEW_COUNT, REVIEW_COUNT_Q, REVIEW_TIME_BELOW_THRESHOLD_RATIO, MERGING_TIME, MERGING_TIME_BELOW_THRESHOLD_RATIO, MERGING_COUNT, MERGING_COUNT_Q, RELEASE_TIME, RELEASE_COUNT, RELEASE_COUNT_Q, OPEN_TIME, OPEN_COUNT, OPEN_COUNT_Q, OPEN_TIME_BELOW_THRESHOLD_RATIO, LEAD_TIME, LEAD_TIME_BELOW_THRESHOLD_RATIO, LEAD_COUNT, LEAD_COUNT_Q, CYCLE_TIME, CYCLE_TIME_BELOW_THRESHOLD_RATIO, CYCLE_COUNT, CYCLE_COUNT_Q, LIVE_CYCLE_TIME, LIVE_CYCLE_COUNT, LIVE_CYCLE_COUNT_Q, ALL_COUNT, WAIT_FIRST_REVIEW_TIME, WAIT_FIRST_REVIEW_COUNT, WAIT_FIRST_REVIEW_COUNT_Q, WAIT_FIRST_REVIEW_TIME_BELOW_THRESHOLD_RATIO, DEPLOYMENT_TIME, DEPLOYMENT_COUNT, DEPLOYMENT_COUNT_Q, LEAD_DEPLOYMENT_TIME, LEAD_DEPLOYMENT_COUNT, LEAD_DEPLOYMENT_COUNT_Q, CYCLE_DEPLOYMENT_TIME, CYCLE_DEPLOYMENT_COUNT, CYCLE_DEPLOYMENT_COUNT_Q, CYCLE_DEPLOYMENT_TIME_BELOW_THRESHOLD_RATIO, FLOW_RATIO, OPENED, REVIEWED, REVIEWED_CLOSED, NOT_REVIEWED, REVIEWED_RATIO, MERGED, REJECTED, CLOSED, DONE, SIZE, SIZE_BELOW_THRESHOLD_RATIO, MEDIAN_SIZE, WIP_PENDING_COUNT, REVIEW_PENDING_COUNT, MERGING_PENDING_COUNT, RELEASE_PENDING_COUNT, OPENED_MAPPED_TO_JIRA, DONE_MAPPED_TO_JIRA, ALL_MAPPED_TO_JIRA, PARTICIPANTS_PER, REVIEW_COMMENTS_PER, REVIEW_COMMENTS_PER_ABOVE_THRESHOLD_RATIO, REVIEWS_PER, COMMENTS_PER].freeze
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
      return value if PullRequestMetricID.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #PullRequestMetricID"
    end
  end
end