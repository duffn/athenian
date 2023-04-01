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
  class FilteredCodeCheckRunPrsStats
    # Number of executions with respect to `date_from` and `date_to`.
    attr_accessor :count

    # Number of successful executions with respect to `date_from` and `date_to`.
    attr_accessor :successes

    # This code check dominated the overall check suite execution time at least once.
    attr_accessor :critical

    attr_accessor :mean_execution_time

    attr_accessor :stddev_execution_time

    attr_accessor :median_execution_time

    # Number of times this check run was skipped.
    attr_accessor :skips

    # Number of times this check run appeared flaky: it both failed and succeeded for the same commit.
    attr_accessor :flaky_count

    # Number of executions through time. The dates sequence is `FilteredCodeCheckRuns.timeline`.
    attr_accessor :count_timeline

    # Number of successful executions through time. The dates sequence is `FilteredCodeCheckRuns.timeline`.
    attr_accessor :successes_timeline

    # Average elapsed execution time through time. The dates sequence is `FilteredCodeCheckRuns.timeline`.
    attr_accessor :mean_execution_time_timeline

    # Median elapsed execution time through time. The dates sequence is `FilteredCodeCheckRuns.timeline`.
    attr_accessor :median_execution_time_timeline

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'count' => :'count',
        :'successes' => :'successes',
        :'critical' => :'critical',
        :'mean_execution_time' => :'mean_execution_time',
        :'stddev_execution_time' => :'stddev_execution_time',
        :'median_execution_time' => :'median_execution_time',
        :'skips' => :'skips',
        :'flaky_count' => :'flaky_count',
        :'count_timeline' => :'count_timeline',
        :'successes_timeline' => :'successes_timeline',
        :'mean_execution_time_timeline' => :'mean_execution_time_timeline',
        :'median_execution_time_timeline' => :'median_execution_time_timeline'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'count' => :'Integer',
        :'successes' => :'Integer',
        :'critical' => :'Boolean',
        :'mean_execution_time' => :'CodeCheckRunStatisticsMeanExecutionTime',
        :'stddev_execution_time' => :'CodeCheckRunStatisticsStddevExecutionTime',
        :'median_execution_time' => :'CodeCheckRunStatisticsMedianExecutionTime',
        :'skips' => :'Integer',
        :'flaky_count' => :'Integer',
        :'count_timeline' => :'Array<Integer>',
        :'successes_timeline' => :'Array<Integer>',
        :'mean_execution_time_timeline' => :'Array<String>',
        :'median_execution_time_timeline' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'CodeCheckRunStatistics'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, 'The input argument (attributes) must be a hash in `Athenian::FilteredCodeCheckRunPrsStats` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Athenian::FilteredCodeCheckRunPrsStats`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.key?(:'successes')
        self.successes = attributes[:'successes']
      end

      if attributes.key?(:'critical')
        self.critical = attributes[:'critical']
      end

      if attributes.key?(:'mean_execution_time')
        self.mean_execution_time = attributes[:'mean_execution_time']
      end

      if attributes.key?(:'stddev_execution_time')
        self.stddev_execution_time = attributes[:'stddev_execution_time']
      end

      if attributes.key?(:'median_execution_time')
        self.median_execution_time = attributes[:'median_execution_time']
      end

      if attributes.key?(:'skips')
        self.skips = attributes[:'skips']
      end

      if attributes.key?(:'flaky_count')
        self.flaky_count = attributes[:'flaky_count']
      end

      if attributes.key?(:'count_timeline')
        if (value = attributes[:'count_timeline']).is_a?(Array)
          self.count_timeline = value
        end
      end

      if attributes.key?(:'successes_timeline')
        if (value = attributes[:'successes_timeline']).is_a?(Array)
          self.successes_timeline = value
        end
      end

      if attributes.key?(:'mean_execution_time_timeline')
        if (value = attributes[:'mean_execution_time_timeline']).is_a?(Array)
          self.mean_execution_time_timeline = value
        end
      end

      if attributes.key?(:'median_execution_time_timeline')
        if (value = attributes[:'median_execution_time_timeline']).is_a?(Array)
          self.median_execution_time_timeline = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @count.nil?
        invalid_properties.push('invalid value for "count", count cannot be nil.')
      end

      if @successes.nil?
        invalid_properties.push('invalid value for "successes", successes cannot be nil.')
      end

      if @successes < 0
        invalid_properties.push('invalid value for "successes", must be greater than or equal to 0.')
      end

      if @critical.nil?
        invalid_properties.push('invalid value for "critical", critical cannot be nil.')
      end

      if @mean_execution_time.nil?
        invalid_properties.push('invalid value for "mean_execution_time", mean_execution_time cannot be nil.')
      end

      if @stddev_execution_time.nil?
        invalid_properties.push('invalid value for "stddev_execution_time", stddev_execution_time cannot be nil.')
      end

      if @median_execution_time.nil?
        invalid_properties.push('invalid value for "median_execution_time", median_execution_time cannot be nil.')
      end

      if @skips.nil?
        invalid_properties.push('invalid value for "skips", skips cannot be nil.')
      end

      if @skips < 0
        invalid_properties.push('invalid value for "skips", must be greater than or equal to 0.')
      end

      if @flaky_count.nil?
        invalid_properties.push('invalid value for "flaky_count", flaky_count cannot be nil.')
      end

      if @flaky_count < 0
        invalid_properties.push('invalid value for "flaky_count", must be greater than or equal to 0.')
      end

      if @count_timeline.nil?
        invalid_properties.push('invalid value for "count_timeline", count_timeline cannot be nil.')
      end

      if @successes_timeline.nil?
        invalid_properties.push('invalid value for "successes_timeline", successes_timeline cannot be nil.')
      end

      if @mean_execution_time_timeline.nil?
        invalid_properties.push('invalid value for "mean_execution_time_timeline", mean_execution_time_timeline cannot be nil.')
      end

      if @median_execution_time_timeline.nil?
        invalid_properties.push('invalid value for "median_execution_time_timeline", median_execution_time_timeline cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @count.nil?
      return false if @successes.nil?
      return false if @successes < 0
      return false if @critical.nil?
      return false if @mean_execution_time.nil?
      return false if @stddev_execution_time.nil?
      return false if @median_execution_time.nil?
      return false if @skips.nil?
      return false if @skips < 0
      return false if @flaky_count.nil?
      return false if @flaky_count < 0
      return false if @count_timeline.nil?
      return false if @successes_timeline.nil?
      return false if @mean_execution_time_timeline.nil?
      return false if @median_execution_time_timeline.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] successes Value to be assigned
    def successes=(successes)
      if successes.nil?
        fail ArgumentError, 'successes cannot be nil'
      end

      if successes < 0
        fail ArgumentError, 'invalid value for "successes", must be greater than or equal to 0.'
      end

      @successes = successes
    end

    # Custom attribute writer method with validation
    # @param [Object] skips Value to be assigned
    def skips=(skips)
      if skips.nil?
        fail ArgumentError, 'skips cannot be nil'
      end

      if skips < 0
        fail ArgumentError, 'invalid value for "skips", must be greater than or equal to 0.'
      end

      @skips = skips
    end

    # Custom attribute writer method with validation
    # @param [Object] flaky_count Value to be assigned
    def flaky_count=(flaky_count)
      if flaky_count.nil?
        fail ArgumentError, 'flaky_count cannot be nil'
      end

      if flaky_count < 0
        fail ArgumentError, 'invalid value for "flaky_count", must be greater than or equal to 0.'
      end

      @flaky_count = flaky_count
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          count == o.count &&
          successes == o.successes &&
          critical == o.critical &&
          mean_execution_time == o.mean_execution_time &&
          stddev_execution_time == o.stddev_execution_time &&
          median_execution_time == o.median_execution_time &&
          skips == o.skips &&
          flaky_count == o.flaky_count &&
          count_timeline == o.count_timeline &&
          successes_timeline == o.successes_timeline &&
          mean_execution_time_timeline == o.mean_execution_time_timeline &&
          median_execution_time_timeline == o.median_execution_time_timeline
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [count, successes, critical, mean_execution_time, stddev_execution_time, median_execution_time, skips, flaky_count, count_timeline, successes_timeline, mean_execution_time_timeline, median_execution_time_timeline].hash
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