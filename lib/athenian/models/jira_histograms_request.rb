=begin
This is an automatically generated file. DO NOT EDIT.

Generated from version 2.1.85 of the OpenAPI specification at
https://github.com/athenianco/api-spec/releases/tag/2.1.85.
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.5.0
=end

require 'date'
require 'time'

module Athenian
  # Request of `/histograms/jira`.
  class JIRAHistogramsRequest
    # Selected issue priorities.
    attr_accessor :priorities

    # Selected issue types.
    attr_accessor :types

    attr_accessor :epics

    # PRs must relate to at least one JIRA issue label from the list. Several labels may be concatenated by a comma `,` so that all of them are required.
    attr_accessor :labels_include

    # PRs cannot relate to JIRA issue labels from the list.
    attr_accessor :labels_exclude

    # Groups of issue participants. The histograms will be calculated for each group.
    attr_accessor :with

    # Issues must belong to these JIRA projects.
    attr_accessor :projects

    # Histogram parameters for each wanted topic.
    attr_accessor :histograms

    # Date from when to start measuring the distribution.
    attr_accessor :date_from

    # Date until which to measure the distribution.
    attr_accessor :date_to

    # Local time zone offset in minutes, used to adjust `date_from` and `date_to`.
    attr_accessor :timezone

    # Value indicating whether issues with the last update older than `date_from` should be ignored.
    attr_accessor :exclude_inactive

    # Cut the distributions at certain quantiles. The default values are [0, 1] which means no cutting.
    attr_accessor :quantiles

    # Session account ID.
    attr_accessor :account

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'priorities' => :'priorities',
        :'types' => :'types',
        :'epics' => :'epics',
        :'labels_include' => :'labels_include',
        :'labels_exclude' => :'labels_exclude',
        :'with' => :'with',
        :'projects' => :'projects',
        :'histograms' => :'histograms',
        :'date_from' => :'date_from',
        :'date_to' => :'date_to',
        :'timezone' => :'timezone',
        :'exclude_inactive' => :'exclude_inactive',
        :'quantiles' => :'quantiles',
        :'account' => :'account'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'priorities' => :'Array<String>',
        :'types' => :'Array<String>',
        :'epics' => :'Array<JIRAEpic>',
        :'labels_include' => :'Array<String>',
        :'labels_exclude' => :'Array<String>',
        :'with' => :'Array<JIRAFilterWith>',
        :'projects' => :'Array<String>',
        :'histograms' => :'Array<JIRAHistogramDefinition>',
        :'date_from' => :'Date',
        :'date_to' => :'Date',
        :'timezone' => :'Integer',
        :'exclude_inactive' => :'Boolean',
        :'quantiles' => :'Array<Float>',
        :'account' => :'Integer'
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
        fail ArgumentError, 'The input argument (attributes) must be a hash in `Athenian::JIRAHistogramsRequest` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Athenian::JIRAHistogramsRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'priorities')
        if (value = attributes[:'priorities']).is_a?(Array)
          self.priorities = value
        end
      end

      if attributes.key?(:'types')
        if (value = attributes[:'types']).is_a?(Array)
          self.types = value
        end
      end

      if attributes.key?(:'epics')
        if (value = attributes[:'epics']).is_a?(Array)
          self.epics = value
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

      if attributes.key?(:'with')
        if (value = attributes[:'with']).is_a?(Array)
          self.with = value
        end
      end

      if attributes.key?(:'projects')
        if (value = attributes[:'projects']).is_a?(Array)
          self.projects = value
        end
      end

      if attributes.key?(:'histograms')
        if (value = attributes[:'histograms']).is_a?(Array)
          self.histograms = value
        end
      end

      if attributes.key?(:'date_from')
        self.date_from = attributes[:'date_from']
      end

      if attributes.key?(:'date_to')
        self.date_to = attributes[:'date_to']
      end

      if attributes.key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.key?(:'exclude_inactive')
        self.exclude_inactive = attributes[:'exclude_inactive']
      end

      if attributes.key?(:'quantiles')
        if (value = attributes[:'quantiles']).is_a?(Array)
          self.quantiles = value
        end
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @histograms.nil?
        invalid_properties.push('invalid value for "histograms", histograms cannot be nil.')
      end

      if @date_from.nil?
        invalid_properties.push('invalid value for "date_from", date_from cannot be nil.')
      end

      if @date_to.nil?
        invalid_properties.push('invalid value for "date_to", date_to cannot be nil.')
      end

      if !@timezone.nil? && @timezone > 780
        invalid_properties.push('invalid value for "timezone", must be smaller than or equal to 780.')
      end

      if !@timezone.nil? && @timezone < -720
        invalid_properties.push('invalid value for "timezone", must be greater than or equal to -720.')
      end

      if @exclude_inactive.nil?
        invalid_properties.push('invalid value for "exclude_inactive", exclude_inactive cannot be nil.')
      end

      if !@quantiles.nil? && @quantiles.length > 2
        invalid_properties.push('invalid value for "quantiles", number of items must be less than or equal to 2.')
      end

      if !@quantiles.nil? && @quantiles.length < 2
        invalid_properties.push('invalid value for "quantiles", number of items must be greater than or equal to 2.')
      end

      if @account.nil?
        invalid_properties.push('invalid value for "account", account cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @histograms.nil?
      return false if @date_from.nil?
      return false if @date_to.nil?
      return false if !@timezone.nil? && @timezone > 780
      return false if !@timezone.nil? && @timezone < -720
      return false if @exclude_inactive.nil?
      return false if !@quantiles.nil? && @quantiles.length > 2
      return false if !@quantiles.nil? && @quantiles.length < 2
      return false if @account.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] timezone Value to be assigned
    def timezone=(timezone)
      if !timezone.nil? && timezone > 780
        fail ArgumentError, 'invalid value for "timezone", must be smaller than or equal to 780.'
      end

      if !timezone.nil? && timezone < -720
        fail ArgumentError, 'invalid value for "timezone", must be greater than or equal to -720.'
      end

      @timezone = timezone
    end

    # Custom attribute writer method with validation
    # @param [Object] quantiles Value to be assigned
    def quantiles=(quantiles)
      if !quantiles.nil? && quantiles.length > 2
        fail ArgumentError, 'invalid value for "quantiles", number of items must be less than or equal to 2.'
      end

      if !quantiles.nil? && quantiles.length < 2
        fail ArgumentError, 'invalid value for "quantiles", number of items must be greater than or equal to 2.'
      end

      @quantiles = quantiles
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          priorities == o.priorities &&
          types == o.types &&
          epics == o.epics &&
          labels_include == o.labels_include &&
          labels_exclude == o.labels_exclude &&
          with == o.with &&
          projects == o.projects &&
          histograms == o.histograms &&
          date_from == o.date_from &&
          date_to == o.date_to &&
          timezone == o.timezone &&
          exclude_inactive == o.exclude_inactive &&
          quantiles == o.quantiles &&
          account == o.account
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [priorities, types, epics, labels_include, labels_exclude, with, projects, histograms, date_from, date_to, timezone, exclude_inactive, quantiles, account].hash
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
