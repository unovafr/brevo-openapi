=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module Brevo
  class SendTransacSms
    # Name of the sender. **The number of characters is limited to 11 for alphanumeric characters and 15 for numeric characters**
    attr_accessor :sender

    # Mobile number to send SMS with the country code
    attr_accessor :recipient

    # Content of the message. If more than 160 characters long, will be sent as multiple text messages
    attr_accessor :content

    # Type of the SMS. Marketing SMS messages are those sent typically with marketing content. Transactional SMS messages are sent to individuals and are triggered in response to some action, such as a sign-up, purchase, etc.
    attr_accessor :type

    # Tag of the message
    attr_accessor :tag

    # Webhook to call for each event triggered by the message (delivered etc.)
    attr_accessor :web_url

    # Format of the message. It indicates whether the content should be treated as unicode or not.
    attr_accessor :unicode_enabled

    # A recognizable prefix will ensure your audience knows who you are.**Mandatory for U.S. Carriers**.This will be added as your Brand Name before the message content and will be included in content,**Prefer to verify maximum length of 160 characters including this prefix to avoid multiple sending of same sms**.
    attr_accessor :organisation_prefix

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'sender' => :'sender',
        :'recipient' => :'recipient',
        :'content' => :'content',
        :'type' => :'type',
        :'tag' => :'tag',
        :'web_url' => :'webUrl',
        :'unicode_enabled' => :'unicodeEnabled',
        :'organisation_prefix' => :'organisationPrefix'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sender' => :'String',
        :'recipient' => :'String',
        :'content' => :'String',
        :'type' => :'String',
        :'tag' => :'String',
        :'web_url' => :'String',
        :'unicode_enabled' => :'Boolean',
        :'organisation_prefix' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Brevo::SendTransacSms` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Brevo::SendTransacSms`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      else
        self.sender = nil
      end

      if attributes.key?(:'recipient')
        self.recipient = attributes[:'recipient']
      else
        self.recipient = nil
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      else
        self.content = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'transactional'
      end

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.key?(:'web_url')
        self.web_url = attributes[:'web_url']
      end

      if attributes.key?(:'unicode_enabled')
        self.unicode_enabled = attributes[:'unicode_enabled']
      end

      if attributes.key?(:'organisation_prefix')
        self.organisation_prefix = attributes[:'organisation_prefix']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @sender.nil?
        invalid_properties.push('invalid value for "sender", sender cannot be nil.')
      end

      if @sender.to_s.length > 15
        invalid_properties.push('invalid value for "sender", the character length must be smaller than or equal to 15.')
      end

      if @recipient.nil?
        invalid_properties.push('invalid value for "recipient", recipient cannot be nil.')
      end

      if @content.nil?
        invalid_properties.push('invalid value for "content", content cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @sender.nil?
      return false if @sender.to_s.length > 15
      return false if @recipient.nil?
      return false if @content.nil?
      type_validator = EnumAttributeValidator.new('String', ["transactional", "marketing"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] sender Value to be assigned
    def sender=(sender)
      if sender.nil?
        fail ArgumentError, 'sender cannot be nil'
      end

      if sender.to_s.length > 15
        fail ArgumentError, 'invalid value for "sender", the character length must be smaller than or equal to 15.'
      end

      @sender = sender
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["transactional", "marketing"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sender == o.sender &&
          recipient == o.recipient &&
          content == o.content &&
          type == o.type &&
          tag == o.tag &&
          web_url == o.web_url &&
          unicode_enabled == o.unicode_enabled &&
          organisation_prefix == o.organisation_prefix
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [sender, recipient, content, type, tag, web_url, unicode_enabled, organisation_prefix].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass = Brevo.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
