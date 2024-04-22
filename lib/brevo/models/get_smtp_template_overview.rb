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
  class GetSmtpTemplateOverview
    # ID of the template
    attr_accessor :id

    # Name of the template
    attr_accessor :name

    # Subject of the template
    attr_accessor :subject

    # Status of template (true=active, false=inactive)
    attr_accessor :is_active

    # Status of test sending for the template (true=test email has been sent, false=test email has not been sent)
    attr_accessor :test_sent

    attr_accessor :sender

    # Email defined as the \"Reply to\" for the template
    attr_accessor :reply_to

    # Customisation of the \"to\" field for the template
    attr_accessor :to_field

    # Tag of the template
    attr_accessor :tag

    # HTML content of the template
    attr_accessor :html_content

    # Creation UTC date-time of the template (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :created_at

    # Last modification UTC date-time of the template (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :modified_at

    # It is true if template is a valid Double opt-in (DOI) template, otherwise it is false. This field will be available only in case of single template detail call.
    attr_accessor :doi_template

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'subject' => :'subject',
        :'is_active' => :'isActive',
        :'test_sent' => :'testSent',
        :'sender' => :'sender',
        :'reply_to' => :'replyTo',
        :'to_field' => :'toField',
        :'tag' => :'tag',
        :'html_content' => :'htmlContent',
        :'created_at' => :'createdAt',
        :'modified_at' => :'modifiedAt',
        :'doi_template' => :'doiTemplate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'subject' => :'String',
        :'is_active' => :'Boolean',
        :'test_sent' => :'Boolean',
        :'sender' => :'GetSmtpTemplateOverviewSender',
        :'reply_to' => :'String',
        :'to_field' => :'String',
        :'tag' => :'String',
        :'html_content' => :'String',
        :'created_at' => :'Time',
        :'modified_at' => :'Time',
        :'doi_template' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Brevo::GetSmtpTemplateOverview` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Brevo::GetSmtpTemplateOverview`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = nil
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      else
        self.subject = nil
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      else
        self.is_active = nil
      end

      if attributes.key?(:'test_sent')
        self.test_sent = attributes[:'test_sent']
      else
        self.test_sent = nil
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      else
        self.sender = nil
      end

      if attributes.key?(:'reply_to')
        self.reply_to = attributes[:'reply_to']
      else
        self.reply_to = nil
      end

      if attributes.key?(:'to_field')
        self.to_field = attributes[:'to_field']
      else
        self.to_field = nil
      end

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      else
        self.tag = nil
      end

      if attributes.key?(:'html_content')
        self.html_content = attributes[:'html_content']
      else
        self.html_content = nil
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      else
        self.created_at = nil
      end

      if attributes.key?(:'modified_at')
        self.modified_at = attributes[:'modified_at']
      else
        self.modified_at = nil
      end

      if attributes.key?(:'doi_template')
        self.doi_template = attributes[:'doi_template']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @subject.nil?
        invalid_properties.push('invalid value for "subject", subject cannot be nil.')
      end

      if @is_active.nil?
        invalid_properties.push('invalid value for "is_active", is_active cannot be nil.')
      end

      if @test_sent.nil?
        invalid_properties.push('invalid value for "test_sent", test_sent cannot be nil.')
      end

      if @sender.nil?
        invalid_properties.push('invalid value for "sender", sender cannot be nil.')
      end

      if @reply_to.nil?
        invalid_properties.push('invalid value for "reply_to", reply_to cannot be nil.')
      end

      if @to_field.nil?
        invalid_properties.push('invalid value for "to_field", to_field cannot be nil.')
      end

      if @tag.nil?
        invalid_properties.push('invalid value for "tag", tag cannot be nil.')
      end

      if @html_content.nil?
        invalid_properties.push('invalid value for "html_content", html_content cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @modified_at.nil?
        invalid_properties.push('invalid value for "modified_at", modified_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @name.nil?
      return false if @subject.nil?
      return false if @is_active.nil?
      return false if @test_sent.nil?
      return false if @sender.nil?
      return false if @reply_to.nil?
      return false if @to_field.nil?
      return false if @tag.nil?
      return false if @html_content.nil?
      return false if @created_at.nil?
      return false if @modified_at.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          subject == o.subject &&
          is_active == o.is_active &&
          test_sent == o.test_sent &&
          sender == o.sender &&
          reply_to == o.reply_to &&
          to_field == o.to_field &&
          tag == o.tag &&
          html_content == o.html_content &&
          created_at == o.created_at &&
          modified_at == o.modified_at &&
          doi_template == o.doi_template
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, subject, is_active, test_sent, sender, reply_to, to_field, tag, html_content, created_at, modified_at, doi_template].hash
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