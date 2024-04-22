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
  class CreateSmtpTemplate
    # Tag of the template
    attr_accessor :tag

    attr_accessor :sender

    # Name of the template
    attr_accessor :template_name

    # Body of the message (HTML version). The field must have more than 10 characters. REQUIRED if htmlUrl is empty
    attr_accessor :html_content

    # Url which contents the body of the email message. REQUIRED if htmlContent is empty
    attr_accessor :html_url

    # Subject of the template
    attr_accessor :subject

    # Email on which campaign recipients will be able to reply to
    attr_accessor :reply_to

    # To personalize the «To» Field. If you want to include the first name and last name of your recipient, add {FNAME} {LNAME}. These contact attributes must already exist in your SendinBlue account. If input parameter 'params' used please use {{contact.FNAME}} {{contact.LNAME}} for personalization
    attr_accessor :to_field

    # Absolute url of the attachment (no local file). Extension allowed: xlsx, xls, ods, docx, docm, doc, csv, pdf, txt, gif, jpg, jpeg, png, tif, tiff, rtf, bmp, cgm, css, shtml, html, htm, zip, xml, ppt, pptx, tar, ez, ics, mobi, msg, pub and eps
    attr_accessor :attachment_url

    # Status of template. isActive = true means template is active and isActive = false means template is inactive
    attr_accessor :is_active

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tag' => :'tag',
        :'sender' => :'sender',
        :'template_name' => :'templateName',
        :'html_content' => :'htmlContent',
        :'html_url' => :'htmlUrl',
        :'subject' => :'subject',
        :'reply_to' => :'replyTo',
        :'to_field' => :'toField',
        :'attachment_url' => :'attachmentUrl',
        :'is_active' => :'isActive'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tag' => :'String',
        :'sender' => :'CreateSmtpTemplateSender',
        :'template_name' => :'String',
        :'html_content' => :'String',
        :'html_url' => :'String',
        :'subject' => :'String',
        :'reply_to' => :'String',
        :'to_field' => :'String',
        :'attachment_url' => :'String',
        :'is_active' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Brevo::CreateSmtpTemplate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Brevo::CreateSmtpTemplate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.key?(:'sender')
        self.sender = attributes[:'sender']
      else
        self.sender = nil
      end

      if attributes.key?(:'template_name')
        self.template_name = attributes[:'template_name']
      else
        self.template_name = nil
      end

      if attributes.key?(:'html_content')
        self.html_content = attributes[:'html_content']
      end

      if attributes.key?(:'html_url')
        self.html_url = attributes[:'html_url']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      else
        self.subject = nil
      end

      if attributes.key?(:'reply_to')
        self.reply_to = attributes[:'reply_to']
      end

      if attributes.key?(:'to_field')
        self.to_field = attributes[:'to_field']
      end

      if attributes.key?(:'attachment_url')
        self.attachment_url = attributes[:'attachment_url']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
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

      if @template_name.nil?
        invalid_properties.push('invalid value for "template_name", template_name cannot be nil.')
      end

      if @subject.nil?
        invalid_properties.push('invalid value for "subject", subject cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @sender.nil?
      return false if @template_name.nil?
      return false if @subject.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tag == o.tag &&
          sender == o.sender &&
          template_name == o.template_name &&
          html_content == o.html_content &&
          html_url == o.html_url &&
          subject == o.subject &&
          reply_to == o.reply_to &&
          to_field == o.to_field &&
          attachment_url == o.attachment_url &&
          is_active == o.is_active
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tag, sender, template_name, html_content, html_url, subject, reply_to, to_field, attachment_url, is_active].hash
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
