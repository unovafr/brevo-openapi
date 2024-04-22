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
  class GetEmailCampaign
    # ID of the campaign
    attr_accessor :id

    # Name of the campaign
    attr_accessor :name

    # Subject of the campaign. Only available if `abTesting` flag of the campaign is `false`
    attr_accessor :subject

    # Type of campaign
    attr_accessor :type

    # Status of the campaign
    attr_accessor :status

    # UTC date-time on which campaign is scheduled (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :scheduled_at

    # Status of A/B Test for the campaign. abTesting = false means it is disabled, & abTesting = true means it is enabled.
    attr_accessor :ab_testing

    # Subject A of the ab-test campaign. Only available if `abTesting` flag of the campaign is `true`
    attr_accessor :subject_a

    # Subject B of the ab-test campaign. Only available if `abTesting` flag of the campaign is `true`
    attr_accessor :subject_b

    # The size of your ab-test groups. Only available if `abTesting` flag of the campaign is `true`
    attr_accessor :split_rule

    # Criteria for the winning version. Only available if `abTesting` flag of the campaign is `true`
    attr_accessor :winner_criteria

    # The duration of the test in hours at the end of which the winning version will be sent. Only available if `abTesting` flag of the campaign is `true`
    attr_accessor :winner_delay

    # It is true if you have chosen to send your campaign at best time, otherwise it is false
    attr_accessor :send_at_best_time

    # Retrieved the status of test email sending. (true=Test email has been sent  false=Test email has not been sent)
    attr_accessor :test_sent

    # Header of the campaign
    attr_accessor :header

    # Footer of the campaign
    attr_accessor :footer

    attr_accessor :sender

    # Email defined as the \"Reply to\" of the campaign
    attr_accessor :reply_to

    # Customisation of the \"to\" field of the campaign
    attr_accessor :to_field

    # HTML content of the campaign
    attr_accessor :html_content

    # Link to share the campaign on social medias
    attr_accessor :share_link

    # Tag of the campaign
    attr_accessor :tag

    # Creation UTC date-time of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :created_at

    # UTC date-time of last modification of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ)
    attr_accessor :modified_at

    # Status of inline image. inlineImageActivation = false means image can’t be embedded, & inlineImageActivation = true means image can be embedded, in the email.
    attr_accessor :inline_image_activation

    # Status of mirror links in campaign. mirrorActive = false means mirror links are deactivated, & mirrorActive = true means mirror links are activated, in the campaign
    attr_accessor :mirror_active

    # FOR TRIGGER ONLY ! Type of trigger campaign.recurring = false means contact can receive the same Trigger campaign only once, & recurring = true means contact can receive the same Trigger campaign several times
    attr_accessor :recurring

    # Sent UTC date-time of the campaign (YYYY-MM-DDTHH:mm:ss.SSSZ). Only available if 'status' of the campaign is 'sent'
    attr_accessor :sent_date

    # Total number of non-delivered campaigns for a particular campaign id.
    attr_accessor :return_bounce

    attr_accessor :recipients

    attr_accessor :statistics

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
        :'id' => :'id',
        :'name' => :'name',
        :'subject' => :'subject',
        :'type' => :'type',
        :'status' => :'status',
        :'scheduled_at' => :'scheduledAt',
        :'ab_testing' => :'abTesting',
        :'subject_a' => :'subjectA',
        :'subject_b' => :'subjectB',
        :'split_rule' => :'splitRule',
        :'winner_criteria' => :'winnerCriteria',
        :'winner_delay' => :'winnerDelay',
        :'send_at_best_time' => :'sendAtBestTime',
        :'test_sent' => :'testSent',
        :'header' => :'header',
        :'footer' => :'footer',
        :'sender' => :'sender',
        :'reply_to' => :'replyTo',
        :'to_field' => :'toField',
        :'html_content' => :'htmlContent',
        :'share_link' => :'shareLink',
        :'tag' => :'tag',
        :'created_at' => :'createdAt',
        :'modified_at' => :'modifiedAt',
        :'inline_image_activation' => :'inlineImageActivation',
        :'mirror_active' => :'mirrorActive',
        :'recurring' => :'recurring',
        :'sent_date' => :'sentDate',
        :'return_bounce' => :'returnBounce',
        :'recipients' => :'recipients',
        :'statistics' => :'statistics'
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
        :'type' => :'String',
        :'status' => :'String',
        :'scheduled_at' => :'Time',
        :'ab_testing' => :'Boolean',
        :'subject_a' => :'String',
        :'subject_b' => :'String',
        :'split_rule' => :'Integer',
        :'winner_criteria' => :'String',
        :'winner_delay' => :'Integer',
        :'send_at_best_time' => :'Boolean',
        :'test_sent' => :'Boolean',
        :'header' => :'String',
        :'footer' => :'String',
        :'sender' => :'GetExtendedCampaignOverviewAllOfSender',
        :'reply_to' => :'String',
        :'to_field' => :'String',
        :'html_content' => :'String',
        :'share_link' => :'String',
        :'tag' => :'String',
        :'created_at' => :'Time',
        :'modified_at' => :'Time',
        :'inline_image_activation' => :'Boolean',
        :'mirror_active' => :'Boolean',
        :'recurring' => :'Boolean',
        :'sent_date' => :'Time',
        :'return_bounce' => :'Integer',
        :'recipients' => :'Object',
        :'statistics' => :'Object'
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
      :'GetExtendedCampaignOverview'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Brevo::GetEmailCampaign` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Brevo::GetEmailCampaign`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      else
        self.status = nil
      end

      if attributes.key?(:'scheduled_at')
        self.scheduled_at = attributes[:'scheduled_at']
      end

      if attributes.key?(:'ab_testing')
        self.ab_testing = attributes[:'ab_testing']
      end

      if attributes.key?(:'subject_a')
        self.subject_a = attributes[:'subject_a']
      end

      if attributes.key?(:'subject_b')
        self.subject_b = attributes[:'subject_b']
      end

      if attributes.key?(:'split_rule')
        self.split_rule = attributes[:'split_rule']
      end

      if attributes.key?(:'winner_criteria')
        self.winner_criteria = attributes[:'winner_criteria']
      end

      if attributes.key?(:'winner_delay')
        self.winner_delay = attributes[:'winner_delay']
      end

      if attributes.key?(:'send_at_best_time')
        self.send_at_best_time = attributes[:'send_at_best_time']
      end

      if attributes.key?(:'test_sent')
        self.test_sent = attributes[:'test_sent']
      else
        self.test_sent = nil
      end

      if attributes.key?(:'header')
        self.header = attributes[:'header']
      else
        self.header = nil
      end

      if attributes.key?(:'footer')
        self.footer = attributes[:'footer']
      else
        self.footer = nil
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

      if attributes.key?(:'html_content')
        self.html_content = attributes[:'html_content']
      else
        self.html_content = nil
      end

      if attributes.key?(:'share_link')
        self.share_link = attributes[:'share_link']
      end

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      else
        self.tag = nil
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

      if attributes.key?(:'inline_image_activation')
        self.inline_image_activation = attributes[:'inline_image_activation']
      end

      if attributes.key?(:'mirror_active')
        self.mirror_active = attributes[:'mirror_active']
      end

      if attributes.key?(:'recurring')
        self.recurring = attributes[:'recurring']
      end

      if attributes.key?(:'sent_date')
        self.sent_date = attributes[:'sent_date']
      end

      if attributes.key?(:'return_bounce')
        self.return_bounce = attributes[:'return_bounce']
      end

      if attributes.key?(:'recipients')
        self.recipients = attributes[:'recipients']
      else
        self.recipients = nil
      end

      if attributes.key?(:'statistics')
        self.statistics = attributes[:'statistics']
      else
        self.statistics = nil
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

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @test_sent.nil?
        invalid_properties.push('invalid value for "test_sent", test_sent cannot be nil.')
      end

      if @header.nil?
        invalid_properties.push('invalid value for "header", header cannot be nil.')
      end

      if @footer.nil?
        invalid_properties.push('invalid value for "footer", footer cannot be nil.')
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

      if @html_content.nil?
        invalid_properties.push('invalid value for "html_content", html_content cannot be nil.')
      end

      if @tag.nil?
        invalid_properties.push('invalid value for "tag", tag cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @modified_at.nil?
        invalid_properties.push('invalid value for "modified_at", modified_at cannot be nil.')
      end

      if @recipients.nil?
        invalid_properties.push('invalid value for "recipients", recipients cannot be nil.')
      end

      if @statistics.nil?
        invalid_properties.push('invalid value for "statistics", statistics cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @id.nil?
      return false if @name.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["classic", "trigger"])
      return false unless type_validator.valid?(@type)
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["draft", "sent", "archive", "queued", "suspended", "in_process"])
      return false unless status_validator.valid?(@status)
      return false if @test_sent.nil?
      return false if @header.nil?
      return false if @footer.nil?
      return false if @sender.nil?
      return false if @reply_to.nil?
      return false if @to_field.nil?
      return false if @html_content.nil?
      return false if @tag.nil?
      return false if @created_at.nil?
      return false if @modified_at.nil?
      return false if @recipients.nil?
      return false if @statistics.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["classic", "trigger"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["draft", "sent", "archive", "queued", "suspended", "in_process"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          subject == o.subject &&
          type == o.type &&
          status == o.status &&
          scheduled_at == o.scheduled_at &&
          ab_testing == o.ab_testing &&
          subject_a == o.subject_a &&
          subject_b == o.subject_b &&
          split_rule == o.split_rule &&
          winner_criteria == o.winner_criteria &&
          winner_delay == o.winner_delay &&
          send_at_best_time == o.send_at_best_time &&
          test_sent == o.test_sent &&
          header == o.header &&
          footer == o.footer &&
          sender == o.sender &&
          reply_to == o.reply_to &&
          to_field == o.to_field &&
          html_content == o.html_content &&
          share_link == o.share_link &&
          tag == o.tag &&
          created_at == o.created_at &&
          modified_at == o.modified_at &&
          inline_image_activation == o.inline_image_activation &&
          mirror_active == o.mirror_active &&
          recurring == o.recurring &&
          sent_date == o.sent_date &&
          return_bounce == o.return_bounce &&
          recipients == o.recipients &&
          statistics == o.statistics
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, subject, type, status, scheduled_at, ab_testing, subject_a, subject_b, split_rule, winner_criteria, winner_delay, send_at_best_time, test_sent, header, footer, sender, reply_to, to_field, html_content, share_link, tag, created_at, modified_at, inline_image_activation, mirror_active, recurring, sent_date, return_bounce, recipients, statistics].hash
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