=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@brevo.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

# Common files
require 'brevo/api_client'
require 'brevo/api_error'
require 'brevo/version'
require 'brevo/configuration'

# Models
require 'brevo/models/ab_test_campaign_result'
require 'brevo/models/ab_test_campaign_result_clicked_links'
require 'brevo/models/ab_test_campaign_result_statistics'
require 'brevo/models/ab_test_version_clicks_inner'
require 'brevo/models/ab_test_version_stats'
require 'brevo/models/add_child_domain'
require 'brevo/models/add_contact_to_list_by_emails'
require 'brevo/models/add_contact_to_list_by_ids'
require 'brevo/models/add_contact_to_list_request'
require 'brevo/models/add_credits'
require 'brevo/models/authenticate_domain_model'
require 'brevo/models/block_domain'
require 'brevo/models/cart'
require 'brevo/models/companies_id_patch_request'
require 'brevo/models/companies_link_unlink_id_patch_request'
require 'brevo/models/companies_list'
require 'brevo/models/companies_post200_response'
require 'brevo/models/companies_post_request'
require 'brevo/models/company'
require 'brevo/models/company_attributes_inner'
require 'brevo/models/component_items'
require 'brevo/models/configuration'
require 'brevo/models/conversations_agent_online_ping_post_request'
require 'brevo/models/conversations_message'
require 'brevo/models/conversations_message_file'
require 'brevo/models/conversations_message_file_image_info'
require 'brevo/models/conversations_messages_id_put_request'
require 'brevo/models/conversations_messages_post_request'
require 'brevo/models/conversations_pushed_messages_post_request'
require 'brevo/models/conversion_source_metrics'
require 'brevo/models/conversion_source_product'
require 'brevo/models/corporate_group_details_response'
require 'brevo/models/corporate_group_details_response_group'
require 'brevo/models/corporate_group_details_response_sub_accounts_inner'
require 'brevo/models/corporate_group_details_response_users_inner'
require 'brevo/models/corporate_group_id_put_request'
require 'brevo/models/corporate_group_post201_response'
require 'brevo/models/corporate_group_post_request'
require 'brevo/models/corporate_group_unlink_group_id_sub_accounts_put_request'
require 'brevo/models/corporate_sso_token_post_request'
require 'brevo/models/corporate_sub_account_ip_associate_post_request'
require 'brevo/models/corporate_sub_account_ip_dissociate_delete_request'
require 'brevo/models/corporate_sub_account_key_post_request'
require 'brevo/models/corporate_sub_account_sso_token_post_request'
require 'brevo/models/corporate_user_invitation_action_email_put200_response'
require 'brevo/models/create_api_key_response'
require 'brevo/models/create_attribute'
require 'brevo/models/create_attribute_enumeration_inner'
require 'brevo/models/create_category_model'
require 'brevo/models/create_child'
require 'brevo/models/create_contact'
require 'brevo/models/create_coupon_collection201_response'
require 'brevo/models/create_coupon_collection_request'
require 'brevo/models/create_coupons_request'
require 'brevo/models/create_doi_contact'
require 'brevo/models/create_domain'
require 'brevo/models/create_domain_model'
require 'brevo/models/create_domain_model_dns_records'
require 'brevo/models/create_domain_model_dns_records_dkim_record'
require 'brevo/models/create_email_campaign'
require 'brevo/models/create_email_campaign_recipients'
require 'brevo/models/create_email_campaign_sender'
require 'brevo/models/create_external_feed'
require 'brevo/models/create_external_feed201_response'
require 'brevo/models/create_list'
require 'brevo/models/create_model'
require 'brevo/models/create_payment_request'
require 'brevo/models/create_payment_response'
require 'brevo/models/create_product_model'
require 'brevo/models/create_reseller'
require 'brevo/models/create_sender'
require 'brevo/models/create_sender_ips_inner'
require 'brevo/models/create_sender_model'
require 'brevo/models/create_sms_campaign'
require 'brevo/models/create_sms_campaign_recipients'
require 'brevo/models/create_smtp_email'
require 'brevo/models/create_smtp_template'
require 'brevo/models/create_smtp_template_sender'
require 'brevo/models/create_sub_account'
require 'brevo/models/create_sub_account_response'
require 'brevo/models/create_update_batch_category'
require 'brevo/models/create_update_batch_category_model'
require 'brevo/models/create_update_batch_products'
require 'brevo/models/create_update_batch_products_model'
require 'brevo/models/create_update_categories'
require 'brevo/models/create_update_category'
require 'brevo/models/create_update_contact_model'
require 'brevo/models/create_update_folder'
require 'brevo/models/create_update_product'
require 'brevo/models/create_update_products'
require 'brevo/models/create_webhook'
require 'brevo/models/create_whats_app_campaign'
require 'brevo/models/create_whats_app_campaign_recipients'
require 'brevo/models/create_whats_app_template'
require 'brevo/models/created_batch_id'
require 'brevo/models/created_process_id'
require 'brevo/models/crm_deals_id_patch_request'
require 'brevo/models/crm_deals_link_unlink_id_patch_request'
require 'brevo/models/crm_deals_post201_response'
require 'brevo/models/crm_deals_post_request'
require 'brevo/models/crm_tasks_id_patch_request'
require 'brevo/models/crm_tasks_post201_response'
require 'brevo/models/crm_tasks_post_request'
require 'brevo/models/deal'
require 'brevo/models/deal_attributes_inner'
require 'brevo/models/deals_list'
require 'brevo/models/delete_hardbounces'
require 'brevo/models/ecommerce_attribution_metrics_conversion_source_conversion_source_id_get200_response'
require 'brevo/models/ecommerce_attribution_metrics_get200_response'
require 'brevo/models/ecommerce_attribution_metrics_get200_response_totals'
require 'brevo/models/ecommerce_attribution_products_conversion_source_conversion_source_id_get200_response'
require 'brevo/models/email_export_recipients'
require 'brevo/models/error_model'
require 'brevo/models/event'
require 'brevo/models/event_contact_properties_value'
require 'brevo/models/event_event_properties_value'
require 'brevo/models/event_identifiers'
require 'brevo/models/export_webhooks_history'
require 'brevo/models/export_webhooks_history_request'
require 'brevo/models/file_data'
require 'brevo/models/file_downloadable_link'
require 'brevo/models/get_account'
require 'brevo/models/get_account_activity'
require 'brevo/models/get_account_activity_logs_inner'
require 'brevo/models/get_account_all_of_marketing_automation'
require 'brevo/models/get_account_all_of_plan'
require 'brevo/models/get_account_all_of_relay'
require 'brevo/models/get_account_all_of_relay_data'
require 'brevo/models/get_aggregated_report'
require 'brevo/models/get_all_external_feeds'
require 'brevo/models/get_all_external_feeds_feeds_inner'
require 'brevo/models/get_attributes'
require 'brevo/models/get_attributes_attributes_inner'
require 'brevo/models/get_attributes_attributes_inner_enumeration_inner'
require 'brevo/models/get_blocked_domains'
require 'brevo/models/get_campaign_overview'
require 'brevo/models/get_campaign_recipients'
require 'brevo/models/get_campaign_stats'
require 'brevo/models/get_categories'
require 'brevo/models/get_category_details'
require 'brevo/models/get_child_account_creation_status'
require 'brevo/models/get_child_domain'
require 'brevo/models/get_child_info'
require 'brevo/models/get_child_info_all_of_api_keys'
require 'brevo/models/get_child_info_all_of_api_keys_v2'
require 'brevo/models/get_child_info_all_of_api_keys_v3'
require 'brevo/models/get_child_info_all_of_credits'
require 'brevo/models/get_child_info_all_of_statistics'
require 'brevo/models/get_children_list'
require 'brevo/models/get_children_list_children_inner'
require 'brevo/models/get_client'
require 'brevo/models/get_contact_campaign_stats'
require 'brevo/models/get_contact_campaign_stats_clicked_inner'
require 'brevo/models/get_contact_campaign_stats_opened_inner'
require 'brevo/models/get_contact_campaign_stats_transac_attributes_inner'
require 'brevo/models/get_contact_campaign_stats_unsubscriptions'
require 'brevo/models/get_contact_details'
require 'brevo/models/get_contact_info_identifier_parameter'
require 'brevo/models/get_contacts'
require 'brevo/models/get_corporate_invited_users_list'
require 'brevo/models/get_corporate_invited_users_list_users_inner'
require 'brevo/models/get_corporate_invited_users_list_users_inner_feature_access'
require 'brevo/models/get_corporate_invited_users_list_users_inner_groups'
require 'brevo/models/get_corporate_user_permission'
require 'brevo/models/get_corporate_user_permission_feature_access'
require 'brevo/models/get_corporate_user_permission_groups_inner'
require 'brevo/models/get_coupon_collection'
require 'brevo/models/get_device_browser_stats'
require 'brevo/models/get_domain_configuration_model'
require 'brevo/models/get_domains_list'
require 'brevo/models/get_domains_list_domains_inner'
require 'brevo/models/get_email_campaign'
require 'brevo/models/get_email_campaigns'
require 'brevo/models/get_email_campaigns_campaigns_inner'
require 'brevo/models/get_email_event_report'
require 'brevo/models/get_email_event_report_events_inner'
require 'brevo/models/get_extended_campaign_overview'
require 'brevo/models/get_extended_campaign_overview_all_of_sender'
require 'brevo/models/get_extended_campaign_stats'
require 'brevo/models/get_extended_client'
require 'brevo/models/get_extended_client_all_of_address'
require 'brevo/models/get_extended_contact_details'
require 'brevo/models/get_extended_contact_details_all_of_statistics'
require 'brevo/models/get_extended_contact_details_all_of_statistics_clicked'
require 'brevo/models/get_extended_contact_details_all_of_statistics_links'
require 'brevo/models/get_extended_contact_details_all_of_statistics_messages_sent'
require 'brevo/models/get_extended_contact_details_all_of_statistics_opened'
require 'brevo/models/get_extended_contact_details_all_of_statistics_unsubscriptions'
require 'brevo/models/get_extended_contact_details_all_of_statistics_unsubscriptions_admin_unsubscription'
require 'brevo/models/get_extended_contact_details_all_of_statistics_unsubscriptions_user_unsubscription'
require 'brevo/models/get_extended_list'
require 'brevo/models/get_extended_list_all_of_campaign_stats'
require 'brevo/models/get_external_feed_by_uuid'
require 'brevo/models/get_external_feed_by_uuid_headers_inner'
require 'brevo/models/get_folder'
require 'brevo/models/get_folder_lists'
require 'brevo/models/get_folders'
require 'brevo/models/get_inbound_email_events'
require 'brevo/models/get_inbound_email_events_by_uuid'
require 'brevo/models/get_inbound_email_events_by_uuid_attachments_inner'
require 'brevo/models/get_inbound_email_events_by_uuid_logs_inner'
require 'brevo/models/get_inbound_email_events_events_inner'
require 'brevo/models/get_invited_users_list'
require 'brevo/models/get_invited_users_list_users_inner'
require 'brevo/models/get_invited_users_list_users_inner_feature_access'
require 'brevo/models/get_ip'
require 'brevo/models/get_ip_from_sender'
require 'brevo/models/get_ips'
require 'brevo/models/get_ips_from_sender'
require 'brevo/models/get_list'
require 'brevo/models/get_lists'
require 'brevo/models/get_lists_lists_inner'
require 'brevo/models/get_payment_request'
require 'brevo/models/get_process'
require 'brevo/models/get_processes'
require 'brevo/models/get_product_details'
require 'brevo/models/get_products'
require 'brevo/models/get_reports'
require 'brevo/models/get_reports_reports_inner'
require 'brevo/models/get_scheduled_email_by_batch_id'
require 'brevo/models/get_scheduled_email_by_batch_id_batches_inner'
require 'brevo/models/get_scheduled_email_by_id200_response'
require 'brevo/models/get_scheduled_email_by_message_id'
require 'brevo/models/get_segments'
require 'brevo/models/get_senders_list'
require 'brevo/models/get_senders_list_senders_inner'
require 'brevo/models/get_senders_list_senders_inner_ips_inner'
require 'brevo/models/get_shared_template_url'
require 'brevo/models/get_sms_campaign'
require 'brevo/models/get_sms_campaign_overview'
require 'brevo/models/get_sms_campaign_stats'
require 'brevo/models/get_sms_campaigns'
require 'brevo/models/get_sms_campaigns_campaigns_inner'
require 'brevo/models/get_sms_event_report'
require 'brevo/models/get_sms_event_report_events_inner'
require 'brevo/models/get_smtp_template_overview'
require 'brevo/models/get_smtp_template_overview_sender'
require 'brevo/models/get_smtp_templates'
require 'brevo/models/get_sso_token'
require 'brevo/models/get_stats_by_device'
require 'brevo/models/get_sub_account_groups200_response_inner'
require 'brevo/models/get_transac_aggregated_sms_report'
require 'brevo/models/get_transac_blocked_contacts'
require 'brevo/models/get_transac_blocked_contacts_contacts_inner'
require 'brevo/models/get_transac_blocked_contacts_contacts_inner_reason'
require 'brevo/models/get_transac_email_content'
require 'brevo/models/get_transac_email_content_events_inner'
require 'brevo/models/get_transac_emails_list'
require 'brevo/models/get_transac_emails_list_transactional_emails_inner'
require 'brevo/models/get_transac_sms_report'
require 'brevo/models/get_transac_sms_report_reports_inner'
require 'brevo/models/get_user_permission'
require 'brevo/models/get_user_permission_privileges_inner'
require 'brevo/models/get_webhook'
require 'brevo/models/get_webhooks'
require 'brevo/models/get_whats_app_config'
require 'brevo/models/get_whatsapp_campaign_overview'
require 'brevo/models/get_whatsapp_campaigns'
require 'brevo/models/get_whatsapp_campaigns_campaigns_inner'
require 'brevo/models/get_whatsapp_event_report'
require 'brevo/models/get_whatsapp_event_report_events_inner'
require 'brevo/models/get_whatsapp_templates'
require 'brevo/models/get_whatsapp_templates_templates_inner'
require 'brevo/models/invite_admin_user'
require 'brevo/models/invite_admin_user_privileges_inner'
require 'brevo/models/inviteuser'
require 'brevo/models/inviteuser_privileges_inner'
require 'brevo/models/inviteuser_response'
require 'brevo/models/manage_ip'
require 'brevo/models/master_details_response'
require 'brevo/models/master_details_response_billing_info'
require 'brevo/models/master_details_response_billing_info_address'
require 'brevo/models/master_details_response_billing_info_name'
require 'brevo/models/master_details_response_plan_info'
require 'brevo/models/master_details_response_plan_info_features_inner'
require 'brevo/models/note'
require 'brevo/models/note_data'
require 'brevo/models/note_id'
require 'brevo/models/notification'
require 'brevo/models/order'
require 'brevo/models/order_batch'
require 'brevo/models/order_billing'
require 'brevo/models/order_products_inner'
require 'brevo/models/otp'
require 'brevo/models/pipeline'
require 'brevo/models/pipeline_stage'
require 'brevo/models/post_contact_info'
require 'brevo/models/post_contact_info_contacts'
require 'brevo/models/post_contact_info_contacts_failure'
require 'brevo/models/post_contact_info_contacts_success'
require 'brevo/models/post_send_failed'
require 'brevo/models/post_send_sms_test_failed'
require 'brevo/models/put_revoke_user_permission'
require 'brevo/models/put_revoke_user_permission_response'
require 'brevo/models/putresendcancelinvitation'
require 'brevo/models/putresendcancelinvitation_response'
require 'brevo/models/remaining_credit_model'
require 'brevo/models/remaining_credit_model_child'
require 'brevo/models/remaining_credit_model_reseller'
require 'brevo/models/remove_contact_from_list_by_all'
require 'brevo/models/remove_contact_from_list_by_emails'
require 'brevo/models/remove_contact_from_list_by_ids'
require 'brevo/models/remove_contact_from_list_request'
require 'brevo/models/remove_credits'
require 'brevo/models/request_contact_export'
require 'brevo/models/request_contact_export_custom_contact_filter'
require 'brevo/models/request_contact_import'
require 'brevo/models/request_contact_import_json_body_inner'
require 'brevo/models/request_contact_import_new_list'
require 'brevo/models/request_sms_recipient_export'
require 'brevo/models/schedule_smtp_email'
require 'brevo/models/send_report'
require 'brevo/models/send_report_email'
require 'brevo/models/send_sms'
require 'brevo/models/send_smtp_email'
require 'brevo/models/send_smtp_email_attachment_inner'
require 'brevo/models/send_smtp_email_bcc_inner'
require 'brevo/models/send_smtp_email_cc_inner'
require 'brevo/models/send_smtp_email_message_versions_inner'
require 'brevo/models/send_smtp_email_reply_to'
require 'brevo/models/send_smtp_email_sender'
require 'brevo/models/send_smtp_email_to_inner'
require 'brevo/models/send_test_email'
require 'brevo/models/send_test_sms'
require 'brevo/models/send_transac_sms'
require 'brevo/models/send_whatsapp_message201_response'
require 'brevo/models/send_whatsapp_message_request'
require 'brevo/models/send_whatsapp_message_template'
require 'brevo/models/send_whatsapp_message_text'
require 'brevo/models/sub_account_apps_toggle_request'
require 'brevo/models/sub_account_details_response'
require 'brevo/models/sub_account_details_response_groups_inner'
require 'brevo/models/sub_account_details_response_plan_info'
require 'brevo/models/sub_account_details_response_plan_info_credits'
require 'brevo/models/sub_account_details_response_plan_info_credits_emails'
require 'brevo/models/sub_account_details_response_plan_info_credits_sms'
require 'brevo/models/sub_account_details_response_plan_info_credits_wp_subscribers'
require 'brevo/models/sub_account_details_response_plan_info_features'
require 'brevo/models/sub_account_details_response_plan_info_features_inbox'
require 'brevo/models/sub_account_details_response_plan_info_features_landing_page'
require 'brevo/models/sub_account_details_response_plan_info_features_users'
require 'brevo/models/sub_account_update_plan_request'
require 'brevo/models/sub_account_update_plan_request_credits'
require 'brevo/models/sub_account_update_plan_request_features'
require 'brevo/models/sub_accounts_response'
require 'brevo/models/sub_accounts_response_sub_accounts_inner'
require 'brevo/models/sub_accounts_response_sub_accounts_inner_groups_inner'
require 'brevo/models/task'
require 'brevo/models/task_list'
require 'brevo/models/task_reminder'
require 'brevo/models/task_types'
require 'brevo/models/update_attribute'
require 'brevo/models/update_attribute_enumeration_inner'
require 'brevo/models/update_batch_contacts'
require 'brevo/models/update_batch_contacts_contacts_inner'
require 'brevo/models/update_batch_contacts_model'
require 'brevo/models/update_campaign_status'
require 'brevo/models/update_child'
require 'brevo/models/update_child_account_status'
require 'brevo/models/update_child_domain'
require 'brevo/models/update_contact'
require 'brevo/models/update_coupon_collection200_response'
require 'brevo/models/update_coupon_collection_request'
require 'brevo/models/update_email_campaign'
require 'brevo/models/update_email_campaign_recipients'
require 'brevo/models/update_email_campaign_sender'
require 'brevo/models/update_external_feed'
require 'brevo/models/update_list'
require 'brevo/models/update_sender'
require 'brevo/models/update_sms_campaign'
require 'brevo/models/update_smtp_template'
require 'brevo/models/update_smtp_template_sender'
require 'brevo/models/update_user_response'
require 'brevo/models/update_webhook'
require 'brevo/models/update_whats_app_campaign'
require 'brevo/models/upload_image_model'
require 'brevo/models/upload_image_to_gallery'
require 'brevo/models/variables_items'
require 'brevo/models/whatsapp_camp_stats'
require 'brevo/models/whatsapp_camp_template'

# APIs
require 'brevo/api/account_api'
require 'brevo/api/companies_api'
require 'brevo/api/contacts_api'
require 'brevo/api/conversations_api'
require 'brevo/api/coupons_api'
require 'brevo/api/deals_api'
require 'brevo/api/domains_api'
require 'brevo/api/ecommerce_api'
require 'brevo/api/email_campaigns_api'
require 'brevo/api/event_api'
require 'brevo/api/external_feeds_api'
require 'brevo/api/files_api'
require 'brevo/api/inbound_parsing_api'
require 'brevo/api/master_account_api'
require 'brevo/api/notes_api'
require 'brevo/api/payments_api'
require 'brevo/api/process_api'
require 'brevo/api/reseller_api'
require 'brevo/api/sms_campaigns_api'
require 'brevo/api/senders_api'
require 'brevo/api/tasks_api'
require 'brevo/api/transactional_emails_api'
require 'brevo/api/transactional_sms_api'
require 'brevo/api/transactional_whats_app_api'
require 'brevo/api/user_api'
require 'brevo/api/webhooks_api'
require 'brevo/api/whats_app_campaigns_api'

module Brevo
  class << self
    # Customize default settings for the SDK using block.
    #   Brevo.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
