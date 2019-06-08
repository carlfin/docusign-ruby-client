=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # Contains information about agent recipients.
  class Agent
    # If a value is provided, the recipient must enter the value as the access code to view and sign the envelope.   Maximum Length: 50 characters and it must conform to the account's access code format setting.  If blank, but the signer `accessCode` property is set in the envelope, then that value is used.  If blank and the signer `accessCode` property is not set, then the access code is not required.
    attr_accessor :access_code

    # This Optional attribute indicates that the access code will be added to the email sent to the recipient; this nullifies the Security measure of Access Code on the recipient.
    attr_accessor :add_access_code_to_email

    # Specifies whether the recipient is embedded or remote.   If the `clientUserId` property is not null then the recipient is embedded. Note that if the `ClientUserId` property is set and either `SignerMustHaveAccount` or `SignerMustLoginToSign` property of the account settings is set to  **true**, an error is generated on sending.ng.   Maximum length: 100 characters. 
    attr_accessor :client_user_id

    # An optional array of strings that allows the sender to provide custom data about the recipient. This information is returned in the envelope status but otherwise not used by DocuSign. Each customField string can be a maximum of 100 characters.
    attr_accessor :custom_fields

    # The date and time the recipient declined the document.
    attr_accessor :declined_date_time

    # The reason the recipient declined the document.
    attr_accessor :declined_reason

    # Reserved: For DocuSign use only.
    attr_accessor :delivered_date_time

    # Reserved: For DocuSign use only.
    attr_accessor :delivery_method

    # 
    attr_accessor :document_visibility

    # Email id of the recipient. Notification of the document to sign is sent to this email id.   Maximum length: 100 characters. 
    attr_accessor :email

    attr_accessor :email_notification

    # 
    attr_accessor :email_recipient_post_signing_url

    # Specifies a sender provided valid URL string for redirecting an embedded recipient. When using this option, the embedded recipient still receives an email from DocuSign, just as a remote recipient would. When the document link in the email is clicked the recipient is redirected, through DocuSign, to the supplied URL to complete their actions. When routing to the URL, the sender's system (the server responding to the URL) must request a recipient token to launch a signing session.   If set to `SIGN_AT_DOCUSIGN`, the recipient is directed to an embedded signing or viewing process directly at DocuSign. The signing or viewing action is initiated by the DocuSign system and the transaction activity and Certificate of Completion records will reflect this. In all other ways the process is identical to an embedded signing or viewing operation that is launched by any partner.  It is important to remember that in a typical embedded workflow the authentication of an embedded recipient is the responsibility of the sending application, DocuSign expects that senders will follow their own process for establishing the recipient's identity. In this workflow the recipient goes through the sending application before the embedded signing or viewing process in initiated. However, when the sending application sets `EmbeddedRecipientStartURL=SIGN_AT_DOCUSIGN`, the recipient goes directly to the embedded signing or viewing process bypassing the sending application and any authentication steps the sending application would use. In this case, DocuSign recommends that you use one of the normal DocuSign authentication features (Access Code, Phone Authentication, SMS Authentication, etc.) to verify the identity of the recipient.  If the `clientUserId` property is NOT set, and the `embeddedRecipientStartURL` is set, DocuSign will ignore the redirect URL and launch the standard signing process for the email recipient. Information can be appended to the embedded recipient start URL using merge fields. The available merge fields items are: envelopeId, recipientId, recipientName, recipientEmail, and customFields. The `customFields` property must be set fort the recipient or envelope. The merge fields are enclosed in double brackets.   *Example*:   `http://senderHost/[[mergeField1]]/ beginSigningSession? [[mergeField2]]&[[mergeField3]]` 
    attr_accessor :embedded_recipient_start_url

    attr_accessor :error_details

    # Specifies the documents that are not visible to this recipient. Document Visibility must be enabled for the account and the `enforceSignerVisibility` property must be set to **true** for the envelope to use this.  When enforce signer visibility is enabled, documents with tabs can only be viewed by signers that have a tab on that document. Recipients that have an administrative role (Agent, Editor, or Intermediaries) or informational role (Certified Deliveries or Carbon Copies) can always see all the documents in an envelope, unless they are specifically excluded using this setting when an envelope is sent. Documents that do not have tabs are always visible to all recipients, unless they are specifically excluded using this setting when an envelope is sent.
    attr_accessor :excluded_documents

    # Reserved:
    attr_accessor :fax_number

    # The user's first name.  Maximum Length: 50 characters.
    attr_accessor :first_name

    # 
    attr_accessor :full_name

    # Specifies authentication check by name. The names used here must be the same as the authentication type names used by the account (these name can also be found in the web console sending interface in the Identify list for a recipient,) This overrides any default authentication setting.  *Example*: Your account has ID Check and SMS Authentication available and in the web console Identify list these appear as 'ID Check $' and 'SMS Auth $'. To use ID check in an envelope, the idCheckConfigurationName should be 'ID Check '. If you wanted to use SMS, it would be 'SMS Auth $' and you would need to add you would need to add phone number information to the `smsAuthentication` node.
    attr_accessor :id_check_configuration_name

    attr_accessor :id_check_information_input

    # When set to **true** and the envelope recipient creates a DocuSign account after signing, the Manage Account Email Notification settings are used as the default settings for the recipient's account. 
    attr_accessor :inherit_email_notification_configuration

    # 
    attr_accessor :last_name

    # 
    attr_accessor :name

    # Specifies a note that is unique to this recipient. This note is sent to the recipient via the signing email. The note displays in the signing UI near the upper left corner of the document on the signing screen.  Maximum Length: 1000 characters.
    attr_accessor :note

    attr_accessor :phone_authentication

    # Reserved:
    attr_accessor :recipient_attachments

    attr_accessor :recipient_authentication_status

    # Unique for the recipient. It is used by the tab element to indicate which recipient is to sign the Document.
    attr_accessor :recipient_id

    # 
    attr_accessor :recipient_id_guid

    # When set to **true**, the recipient is required to use the specified ID check method (including Phone and SMS authentication) to validate their identity. 
    attr_accessor :require_id_lookup

    # Optional element. Specifies the role name associated with the recipient.<br/><br/>This is required when working with template recipients.
    attr_accessor :role_name

    # Specifies the routing order of the recipient in the envelope. 
    attr_accessor :routing_order

    attr_accessor :saml_authentication

    # The date and time the envelope was sent.
    attr_accessor :sent_date_time

    # Reserved: For DocuSign use only. 
    attr_accessor :signed_date_time

    # When set to **true** and the feature is enabled in the sender's account, the signing recipient is required to draw signatures and initials at each signature/initial tab ( instead of adopting a signature/initial style or only drawing a signature/initial once).
    attr_accessor :signing_group_id

    # The display name for the signing group.   Maximum Length: 100 characters. 
    attr_accessor :signing_group_name

    # A complex type that contains information about users in the signing group.
    attr_accessor :signing_group_users

    attr_accessor :sms_authentication

    #  Lists the social ID type that can be used for recipient authentication.
    attr_accessor :social_authentications

    # Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later.
    attr_accessor :status

    # When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients. 
    attr_accessor :template_locked

    # When set to **true**, the sender may not remove the recipient. Used only when working with template recipients.
    attr_accessor :template_required

    # 
    attr_accessor :total_tab_count

    # 
    attr_accessor :user_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'access_code' => :'accessCode',
        :'add_access_code_to_email' => :'addAccessCodeToEmail',
        :'client_user_id' => :'clientUserId',
        :'custom_fields' => :'customFields',
        :'declined_date_time' => :'declinedDateTime',
        :'declined_reason' => :'declinedReason',
        :'delivered_date_time' => :'deliveredDateTime',
        :'delivery_method' => :'deliveryMethod',
        :'document_visibility' => :'documentVisibility',
        :'email' => :'email',
        :'email_notification' => :'emailNotification',
        :'email_recipient_post_signing_url' => :'emailRecipientPostSigningURL',
        :'embedded_recipient_start_url' => :'embeddedRecipientStartURL',
        :'error_details' => :'errorDetails',
        :'excluded_documents' => :'excludedDocuments',
        :'fax_number' => :'faxNumber',
        :'first_name' => :'firstName',
        :'full_name' => :'fullName',
        :'id_check_configuration_name' => :'idCheckConfigurationName',
        :'id_check_information_input' => :'idCheckInformationInput',
        :'inherit_email_notification_configuration' => :'inheritEmailNotificationConfiguration',
        :'last_name' => :'lastName',
        :'name' => :'name',
        :'note' => :'note',
        :'phone_authentication' => :'phoneAuthentication',
        :'recipient_attachments' => :'recipientAttachments',
        :'recipient_authentication_status' => :'recipientAuthenticationStatus',
        :'recipient_id' => :'recipientId',
        :'recipient_id_guid' => :'recipientIdGuid',
        :'require_id_lookup' => :'requireIdLookup',
        :'role_name' => :'roleName',
        :'routing_order' => :'routingOrder',
        :'saml_authentication' => :'samlAuthentication',
        :'sent_date_time' => :'sentDateTime',
        :'signed_date_time' => :'signedDateTime',
        :'signing_group_id' => :'signingGroupId',
        :'signing_group_name' => :'signingGroupName',
        :'signing_group_users' => :'signingGroupUsers',
        :'sms_authentication' => :'smsAuthentication',
        :'social_authentications' => :'socialAuthentications',
        :'status' => :'status',
        :'template_locked' => :'templateLocked',
        :'template_required' => :'templateRequired',
        :'total_tab_count' => :'totalTabCount',
        :'user_id' => :'userId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'access_code' => :'String',
        :'add_access_code_to_email' => :'String',
        :'client_user_id' => :'String',
        :'custom_fields' => :'Array<String>',
        :'declined_date_time' => :'String',
        :'declined_reason' => :'String',
        :'delivered_date_time' => :'String',
        :'delivery_method' => :'String',
        :'document_visibility' => :'Array<DocumentVisibility>',
        :'email' => :'String',
        :'email_notification' => :'RecipientEmailNotification',
        :'email_recipient_post_signing_url' => :'String',
        :'embedded_recipient_start_url' => :'String',
        :'error_details' => :'ErrorDetails',
        :'excluded_documents' => :'Array<String>',
        :'fax_number' => :'String',
        :'first_name' => :'String',
        :'full_name' => :'String',
        :'id_check_configuration_name' => :'String',
        :'id_check_information_input' => :'IdCheckInformationInput',
        :'inherit_email_notification_configuration' => :'String',
        :'last_name' => :'String',
        :'name' => :'String',
        :'note' => :'String',
        :'phone_authentication' => :'RecipientPhoneAuthentication',
        :'recipient_attachments' => :'Array<RecipientAttachment>',
        :'recipient_authentication_status' => :'AuthenticationStatus',
        :'recipient_id' => :'String',
        :'recipient_id_guid' => :'String',
        :'require_id_lookup' => :'String',
        :'role_name' => :'String',
        :'routing_order' => :'String',
        :'saml_authentication' => :'RecipientSAMLAuthentication',
        :'sent_date_time' => :'String',
        :'signed_date_time' => :'String',
        :'signing_group_id' => :'String',
        :'signing_group_name' => :'String',
        :'signing_group_users' => :'Array<UserInfo>',
        :'sms_authentication' => :'RecipientSMSAuthentication',
        :'social_authentications' => :'Array<SocialAuthentication>',
        :'status' => :'String',
        :'template_locked' => :'String',
        :'template_required' => :'String',
        :'total_tab_count' => :'String',
        :'user_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'accessCode')
        self.access_code = attributes[:'accessCode']
      end

      if attributes.has_key?(:'addAccessCodeToEmail')
        self.add_access_code_to_email = attributes[:'addAccessCodeToEmail']
      end

      if attributes.has_key?(:'clientUserId')
        self.client_user_id = attributes[:'clientUserId']
      end

      if attributes.has_key?(:'customFields')
        if (value = attributes[:'customFields']).is_a?(Array)
          self.custom_fields = value
        end
      end

      if attributes.has_key?(:'declinedDateTime')
        self.declined_date_time = attributes[:'declinedDateTime']
      end

      if attributes.has_key?(:'declinedReason')
        self.declined_reason = attributes[:'declinedReason']
      end

      if attributes.has_key?(:'deliveredDateTime')
        self.delivered_date_time = attributes[:'deliveredDateTime']
      end

      if attributes.has_key?(:'deliveryMethod')
        self.delivery_method = attributes[:'deliveryMethod']
      end

      if attributes.has_key?(:'documentVisibility')
        if (value = attributes[:'documentVisibility']).is_a?(Array)
          self.document_visibility = value
        end
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'emailNotification')
        self.email_notification = attributes[:'emailNotification']
      end

      if attributes.has_key?(:'emailRecipientPostSigningURL')
        self.email_recipient_post_signing_url = attributes[:'emailRecipientPostSigningURL']
      end

      if attributes.has_key?(:'embeddedRecipientStartURL')
        self.embedded_recipient_start_url = attributes[:'embeddedRecipientStartURL']
      end

      if attributes.has_key?(:'errorDetails')
        self.error_details = attributes[:'errorDetails']
      end

      if attributes.has_key?(:'excludedDocuments')
        if (value = attributes[:'excludedDocuments']).is_a?(Array)
          self.excluded_documents = value
        end
      end

      if attributes.has_key?(:'faxNumber')
        self.fax_number = attributes[:'faxNumber']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'fullName')
        self.full_name = attributes[:'fullName']
      end

      if attributes.has_key?(:'idCheckConfigurationName')
        self.id_check_configuration_name = attributes[:'idCheckConfigurationName']
      end

      if attributes.has_key?(:'idCheckInformationInput')
        self.id_check_information_input = attributes[:'idCheckInformationInput']
      end

      if attributes.has_key?(:'inheritEmailNotificationConfiguration')
        self.inherit_email_notification_configuration = attributes[:'inheritEmailNotificationConfiguration']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'note')
        self.note = attributes[:'note']
      end

      if attributes.has_key?(:'phoneAuthentication')
        self.phone_authentication = attributes[:'phoneAuthentication']
      end

      if attributes.has_key?(:'recipientAttachments')
        if (value = attributes[:'recipientAttachments']).is_a?(Array)
          self.recipient_attachments = value
        end
      end

      if attributes.has_key?(:'recipientAuthenticationStatus')
        self.recipient_authentication_status = attributes[:'recipientAuthenticationStatus']
      end

      if attributes.has_key?(:'recipientId')
        self.recipient_id = attributes[:'recipientId']
      end

      if attributes.has_key?(:'recipientIdGuid')
        self.recipient_id_guid = attributes[:'recipientIdGuid']
      end

      if attributes.has_key?(:'requireIdLookup')
        self.require_id_lookup = attributes[:'requireIdLookup']
      end

      if attributes.has_key?(:'roleName')
        self.role_name = attributes[:'roleName']
      end

      if attributes.has_key?(:'routingOrder')
        self.routing_order = attributes[:'routingOrder']
      end

      if attributes.has_key?(:'samlAuthentication')
        self.saml_authentication = attributes[:'samlAuthentication']
      end

      if attributes.has_key?(:'sentDateTime')
        self.sent_date_time = attributes[:'sentDateTime']
      end

      if attributes.has_key?(:'signedDateTime')
        self.signed_date_time = attributes[:'signedDateTime']
      end

      if attributes.has_key?(:'signingGroupId')
        self.signing_group_id = attributes[:'signingGroupId']
      end

      if attributes.has_key?(:'signingGroupName')
        self.signing_group_name = attributes[:'signingGroupName']
      end

      if attributes.has_key?(:'signingGroupUsers')
        if (value = attributes[:'signingGroupUsers']).is_a?(Array)
          self.signing_group_users = value
        end
      end

      if attributes.has_key?(:'smsAuthentication')
        self.sms_authentication = attributes[:'smsAuthentication']
      end

      if attributes.has_key?(:'socialAuthentications')
        if (value = attributes[:'socialAuthentications']).is_a?(Array)
          self.social_authentications = value
        end
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'templateLocked')
        self.template_locked = attributes[:'templateLocked']
      end

      if attributes.has_key?(:'templateRequired')
        self.template_required = attributes[:'templateRequired']
      end

      if attributes.has_key?(:'totalTabCount')
        self.total_tab_count = attributes[:'totalTabCount']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access_code == o.access_code &&
          add_access_code_to_email == o.add_access_code_to_email &&
          client_user_id == o.client_user_id &&
          custom_fields == o.custom_fields &&
          declined_date_time == o.declined_date_time &&
          declined_reason == o.declined_reason &&
          delivered_date_time == o.delivered_date_time &&
          delivery_method == o.delivery_method &&
          document_visibility == o.document_visibility &&
          email == o.email &&
          email_notification == o.email_notification &&
          email_recipient_post_signing_url == o.email_recipient_post_signing_url &&
          embedded_recipient_start_url == o.embedded_recipient_start_url &&
          error_details == o.error_details &&
          excluded_documents == o.excluded_documents &&
          fax_number == o.fax_number &&
          first_name == o.first_name &&
          full_name == o.full_name &&
          id_check_configuration_name == o.id_check_configuration_name &&
          id_check_information_input == o.id_check_information_input &&
          inherit_email_notification_configuration == o.inherit_email_notification_configuration &&
          last_name == o.last_name &&
          name == o.name &&
          note == o.note &&
          phone_authentication == o.phone_authentication &&
          recipient_attachments == o.recipient_attachments &&
          recipient_authentication_status == o.recipient_authentication_status &&
          recipient_id == o.recipient_id &&
          recipient_id_guid == o.recipient_id_guid &&
          require_id_lookup == o.require_id_lookup &&
          role_name == o.role_name &&
          routing_order == o.routing_order &&
          saml_authentication == o.saml_authentication &&
          sent_date_time == o.sent_date_time &&
          signed_date_time == o.signed_date_time &&
          signing_group_id == o.signing_group_id &&
          signing_group_name == o.signing_group_name &&
          signing_group_users == o.signing_group_users &&
          sms_authentication == o.sms_authentication &&
          social_authentications == o.social_authentications &&
          status == o.status &&
          template_locked == o.template_locked &&
          template_required == o.template_required &&
          total_tab_count == o.total_tab_count &&
          user_id == o.user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [access_code, add_access_code_to_email, client_user_id, custom_fields, declined_date_time, declined_reason, delivered_date_time, delivery_method, document_visibility, email, email_notification, email_recipient_post_signing_url, embedded_recipient_start_url, error_details, excluded_documents, fax_number, first_name, full_name, id_check_configuration_name, id_check_information_input, inherit_email_notification_configuration, last_name, name, note, phone_authentication, recipient_attachments, recipient_authentication_status, recipient_id, recipient_id_guid, require_id_lookup, role_name, routing_order, saml_authentication, sent_date_time, signed_date_time, signing_group_id, signing_group_name, signing_group_users, sms_authentication, social_authentications, status, template_locked, template_required, total_tab_count, user_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = DocuSign_eSign.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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
