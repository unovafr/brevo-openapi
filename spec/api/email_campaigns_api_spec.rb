=begin
#SendinBlue API

#SendinBlue provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/sendinblue  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@sendinblue.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Brevo::EmailCampaignsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'EmailCampaignsApi' do
  before do
    # run before each test
    @api_instance = Brevo::EmailCampaignsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of EmailCampaignsApi' do
    it 'should create an instance of EmailCampaignsApi' do
      expect(@api_instance).to be_instance_of(Brevo::EmailCampaignsApi)
    end
  end

  # unit tests for create_email_campaign
  # Create an email campaign
  # @param email_campaigns Values to create a campaign
  # @param [Hash] opts the optional parameters
  # @return [CreateModel]
  describe 'create_email_campaign test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_email_campaign
  # Delete an email campaign
  # @param campaign_id id of the campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_email_campaign test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for email_export_recipients
  # Export the recipients of an email campaign
  # @param campaign_id Id of the campaign
  # @param [Hash] opts the optional parameters
  # @option opts [EmailExportRecipients] :recipient_export Values to send for a recipient export request
  # @return [CreatedProcessId]
  describe 'email_export_recipients test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_ab_test_campaign_result
  # Get an A/B test email campaign results
  # Obtain winning version of an A/B test email campaign
  # @param campaign_id Id of the A/B test campaign
  # @param [Hash] opts the optional parameters
  # @return [AbTestCampaignResult]
  describe 'get_ab_test_campaign_result test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_email_campaign
  # Get an email campaign report
  # @param campaign_id Id of the campaign
  # @param [Hash] opts the optional parameters
  # @option opts [String] :statistics Filter on type of the statistics required. Example **globalStats** value will only fetch globalStats info of the campaign in returned response.
  # @return [GetEmailCampaign]
  describe 'get_email_campaign test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_email_campaigns
  # Return all your created email campaigns
  # @param [Hash] opts the optional parameters
  # @option opts [String] :type Filter on the type of the campaigns
  # @option opts [String] :status Filter on the status of the campaign
  # @option opts [String] :statistics Filter on type of the statistics required. Example **globalStats** value will only fetch globalStats info of the campaign in returned response.
  # @option opts [Time] :start_date Mandatory if endDate is used. Starting (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent email campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; )
  # @option opts [Time] :end_date Mandatory if startDate is used. Ending (urlencoded) UTC date-time (YYYY-MM-DDTHH:mm:ss.SSSZ) to filter the sent email campaigns. Prefer to pass your timezone in date-time format for accurate result ( only available if either &#39;status&#39; not passed and if passed is set to &#39;sent&#39; )
  # @option opts [Integer] :limit Number of documents per page
  # @option opts [Integer] :offset Index of the first document in the page
  # @option opts [Boolean] :exclude_html_content Use this flag to exclude htmlContent from the response body. If set to **true**, htmlContent field will be returned as empty string in the response body
  # @return [GetEmailCampaigns]
  describe 'get_email_campaigns test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_shared_template_url
  # Get a shared template url
  # Get a unique URL to share &amp; import an email template from one Sendinblue account to another.
  # @param campaign_id Id of the campaign or template
  # @param [Hash] opts the optional parameters
  # @return [GetSharedTemplateUrl]
  describe 'get_shared_template_url test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_email_campaign_now
  # Send an email campaign immediately, based on campaignId
  # @param campaign_id Id of the campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_email_campaign_now test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_report
  # Send the report of a campaign
  # A PDF will be sent to the specified email addresses
  # @param campaign_id Id of the campaign
  # @param send_report Values for send a report
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_report test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for send_test_email
  # Send an email campaign to your test list
  # @param campaign_id Id of the campaign
  # @param email_to 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'send_test_email test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_campaign_status
  # Update an email campaign status
  # @param campaign_id Id of the campaign
  # @param status Status of the campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_campaign_status test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_email_campaign
  # Update an email campaign
  # @param campaign_id Id of the campaign
  # @param email_campaign Values to update a campaign
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_email_campaign test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for upload_image_to_gallery
  # Upload an image to your account&#39;s image gallery
  # @param upload_image Parameters to upload an image
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'upload_image_to_gallery test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
