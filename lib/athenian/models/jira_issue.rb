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
  class JIRAIssue
    # JIRA issue key `PROJECT-###`.
    attr_accessor :id

    # Title of this issue.
    attr_accessor :title

    # When this issue was created.
    attr_accessor :created

    # When this issue was last updated.
    attr_accessor :updated

    # When the issue entered the \"In Progress\" stage or received a PR. This timestamp can be missing and is always less than or equal to `resolved`.
    attr_accessor :work_began

    # When the issue finished: the stage is \"Done\" and all PRs are either released or rejected. This timestamp can be missing and is always greater than or equal to `work_began`.
    attr_accessor :resolved

    attr_accessor :acknowledge_time

    attr_accessor :lead_time

    attr_accessor :life_time

    # Name of the person who reported the issue.
    attr_accessor :reporter

    # Name of the assigned person.
    attr_accessor :assignee

    # Number of comments in the issue excluding sub-tasks and children.
    attr_accessor :comments

    # The list of comments for the issue.
    attr_accessor :comment_list

    # Name of the priority. The details are returned in `FilteredJIRAStuff.priorities`.
    attr_accessor :priority

    # The description of the issue rendered as HTML.
    attr_accessor :rendered_description

    # Name of the status. The details are returned in `FilteredJIRAStuff.statuses`.
    attr_accessor :status

    # Value of the \"story points\" field.
    attr_accessor :story_points

    # Name of the issue type. The details are returned in `FilteredJIRAStuff.issue_types`.
    attr_accessor :type

    # Link to the issue in JIRA web application.
    attr_accessor :url

    # Identifier of the project where this issue exists.
    attr_accessor :project

    # Details about the mapped PRs. `jira` field is unfilled.
    attr_accessor :prs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'created' => :'created',
        :'updated' => :'updated',
        :'work_began' => :'work_began',
        :'resolved' => :'resolved',
        :'acknowledge_time' => :'acknowledge_time',
        :'lead_time' => :'lead_time',
        :'life_time' => :'life_time',
        :'reporter' => :'reporter',
        :'assignee' => :'assignee',
        :'comments' => :'comments',
        :'comment_list' => :'comment_list',
        :'priority' => :'priority',
        :'rendered_description' => :'rendered_description',
        :'status' => :'status',
        :'story_points' => :'story_points',
        :'type' => :'type',
        :'url' => :'url',
        :'project' => :'project',
        :'prs' => :'prs'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'title' => :'String',
        :'created' => :'Time',
        :'updated' => :'Time',
        :'work_began' => :'Time',
        :'resolved' => :'Time',
        :'acknowledge_time' => :'Object',
        :'lead_time' => :'Object',
        :'life_time' => :'Object',
        :'reporter' => :'String',
        :'assignee' => :'String',
        :'comments' => :'Integer',
        :'comment_list' => :'Array<JIRAComment>',
        :'priority' => :'String',
        :'rendered_description' => :'String',
        :'status' => :'String',
        :'story_points' => :'Float',
        :'type' => :'String',
        :'url' => :'String',
        :'project' => :'String',
        :'prs' => :'Array<PullRequest>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'priority',
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'JIRAEpicIssueCommon',
      :'JIRAIssueAllOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, 'The input argument (attributes) must be a hash in `Athenian::JIRAIssue` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Athenian::JIRAIssue`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.key?(:'work_began')
        self.work_began = attributes[:'work_began']
      end

      if attributes.key?(:'resolved')
        self.resolved = attributes[:'resolved']
      end

      if attributes.key?(:'acknowledge_time')
        self.acknowledge_time = attributes[:'acknowledge_time']
      end

      if attributes.key?(:'lead_time')
        self.lead_time = attributes[:'lead_time']
      end

      if attributes.key?(:'life_time')
        self.life_time = attributes[:'life_time']
      end

      if attributes.key?(:'reporter')
        self.reporter = attributes[:'reporter']
      end

      if attributes.key?(:'assignee')
        self.assignee = attributes[:'assignee']
      end

      if attributes.key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.key?(:'comment_list')
        if (value = attributes[:'comment_list']).is_a?(Array)
          self.comment_list = value
        end
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'rendered_description')
        self.rendered_description = attributes[:'rendered_description']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'story_points')
        self.story_points = attributes[:'story_points']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'project')
        self.project = attributes[:'project']
      end

      if attributes.key?(:'prs')
        if (value = attributes[:'prs']).is_a?(Array)
          self.prs = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      if @updated.nil?
        invalid_properties.push('invalid value for "updated", updated cannot be nil.')
      end

      if @acknowledge_time.nil?
        invalid_properties.push('invalid value for "acknowledge_time", acknowledge_time cannot be nil.')
      end

      if @life_time.nil?
        invalid_properties.push('invalid value for "life_time", life_time cannot be nil.')
      end

      if @reporter.nil?
        invalid_properties.push('invalid value for "reporter", reporter cannot be nil.')
      end

      if @comments.nil?
        invalid_properties.push('invalid value for "comments", comments cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @url.nil?
        invalid_properties.push('invalid value for "url", url cannot be nil.')
      end

      if @project.nil?
        invalid_properties.push('invalid value for "project", project cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @title.nil?
      return false if @created.nil?
      return false if @updated.nil?
      return false if @acknowledge_time.nil?
      return false if @life_time.nil?
      return false if @reporter.nil?
      return false if @comments.nil?
      return false if @status.nil?
      return false if @type.nil?
      return false if @url.nil?
      return false if @project.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          created == o.created &&
          updated == o.updated &&
          work_began == o.work_began &&
          resolved == o.resolved &&
          acknowledge_time == o.acknowledge_time &&
          lead_time == o.lead_time &&
          life_time == o.life_time &&
          reporter == o.reporter &&
          assignee == o.assignee &&
          comments == o.comments &&
          comment_list == o.comment_list &&
          priority == o.priority &&
          rendered_description == o.rendered_description &&
          status == o.status &&
          story_points == o.story_points &&
          type == o.type &&
          url == o.url &&
          project == o.project &&
          prs == o.prs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, created, updated, work_began, resolved, acknowledge_time, lead_time, life_time, reporter, assignee, comments, comment_list, priority, rendered_description, status, story_points, type, url, project, prs].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Athenian.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
