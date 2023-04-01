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
  # Filters for `/metrics/code_checks` and `/histograms/code_checks`. Achieve the best performance by packing all your filters in a single `ForSetCodeChecks` instead of sending multiple `ForSetCodeChecks`-s. For example, use `repogroups` and `pushers` to request separate metrics for several repository sets and teams. 
  class ForSetCodeChecks
    # Set of repositories. An empty list raises a bad response 400. Duplicates are automatically ignored.
    attr_accessor :repositories

    # Lists of indexes in `repositories` or `developers` that define independent groups that must be processed individually. The groups may have intersections.
    attr_accessor :repogroups

    # Check runs must be triggered by commits pushed by these people. When it is impossible to determine who pushed, e.g. in legacy API based checks, they are committers. It is possible to mention whole teams using the syntax `{id}` where `id` is a team identifier (see `/teams`). 
    attr_accessor :pushers

    # Check runs must be triggered by commits authored by these people. We aggregate by each group so that you can request metrics of several teams at once. We treat `pushers` as another group, if specified.
    attr_accessor :pusher_groups

    # At least one of these labels must be present in the checked PRs.
    attr_accessor :labels_include

    # None of these labels must be present in each checked PR.
    attr_accessor :labels_exclude

    attr_accessor :jira

    # Split by changed number of lines (inserted + removed) in pull requests.
    attr_accessor :lines

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'repositories' => :'repositories',
        :'repogroups' => :'repogroups',
        :'pushers' => :'pushers',
        :'pusher_groups' => :'pusher_groups',
        :'labels_include' => :'labels_include',
        :'labels_exclude' => :'labels_exclude',
        :'jira' => :'jira',
        :'lines' => :'lines'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'repositories' => :'Array<String>',
        :'repogroups' => :'Array<Array<Integer>>',
        :'pushers' => :'Array<String>',
        :'pusher_groups' => :'Array<Array>',
        :'labels_include' => :'Array<String>',
        :'labels_exclude' => :'Array<String>',
        :'jira' => :'ForSetCodeChecksJira',
        :'lines' => :'Array<Integer>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, 'The input argument (attributes) must be a hash in `Athenian::ForSetCodeChecks` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Athenian::ForSetCodeChecks`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'repositories')
        if (value = attributes[:'repositories']).is_a?(Array)
          self.repositories = value
        end
      end

      if attributes.key?(:'repogroups')
        if (value = attributes[:'repogroups']).is_a?(Array)
          self.repogroups = value
        end
      end

      if attributes.key?(:'pushers')
        if (value = attributes[:'pushers']).is_a?(Array)
          self.pushers = value
        end
      end

      if attributes.key?(:'pusher_groups')
        if (value = attributes[:'pusher_groups']).is_a?(Array)
          self.pusher_groups = value
        end
      end

      if attributes.key?(:'labels_include')
        if (value = attributes[:'labels_include']).is_a?(Array)
          self.labels_include = value
        end
      end

      if attributes.key?(:'labels_exclude')
        if (value = attributes[:'labels_exclude']).is_a?(Array)
          self.labels_exclude = value
        end
      end

      if attributes.key?(:'jira')
        self.jira = attributes[:'jira']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @repositories.nil?
        invalid_properties.push('invalid value for "repositories", repositories cannot be nil.')
      end

      if !@repogroups.nil? && @repogroups.length < 1
        invalid_properties.push('invalid value for "repogroups", number of items must be greater than or equal to 1.')
      end

      if !@lines.nil? && @lines.length < 2
        invalid_properties.push('invalid value for "lines", number of items must be greater than or equal to 2.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @repositories.nil?
      return false if !@repogroups.nil? && @repogroups.length < 1
      return false if !@lines.nil? && @lines.length < 2
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] repogroups Value to be assigned
    def repogroups=(repogroups)
      if !repogroups.nil? && repogroups.length < 1
        fail ArgumentError, 'invalid value for "repogroups", number of items must be greater than or equal to 1.'
      end

      @repogroups = repogroups
    end

    # Custom attribute writer method with validation
    # @param [Object] lines Value to be assigned
    def lines=(lines)
      if !lines.nil? && lines.length < 2
        fail ArgumentError, 'invalid value for "lines", number of items must be greater than or equal to 2.'
      end

      @lines = lines
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          repositories == o.repositories &&
          repogroups == o.repogroups &&
          pushers == o.pushers &&
          pusher_groups == o.pusher_groups &&
          labels_include == o.labels_include &&
          labels_exclude == o.labels_exclude &&
          jira == o.jira &&
          lines == o.lines
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [repositories, repogroups, pushers, pusher_groups, labels_include, labels_exclude, jira, lines].hash
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