=begin
#Brevo API

#Brevo provide a RESTFul API that can be used with any languages. With this API, you will be able to :   - Manage your campaigns and get the statistics   - Manage your contacts   - Send transactional Emails and SMS   - and much more...  You can download our wrappers at https://github.com/orgs/brevo  **Possible responses**   | Code | Message |   | :-------------: | ------------- |   | 200  | OK. Successful Request  |   | 201  | OK. Successful Creation |   | 202  | OK. Request accepted |   | 204  | OK. Successful Update/Deletion  |   | 400  | Error. Bad Request  |   | 401  | Error. Authentication Needed  |   | 402  | Error. Not enough credit, plan upgrade needed  |   | 403  | Error. Permission denied  |   | 404  | Error. Object does not exist |   | 405  | Error. Method not allowed  |   | 406  | Error. Not Acceptable  | 

The version of the OpenAPI document: 3.0.0
Contact: contact@brevo.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'cgi'

module Brevo
  class FilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all files
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity Filter by file entity type
    # @option opts [String] :entity_ids Filter by file entity IDs
    # @option opts [Integer] :date_from dateFrom to date range filter type (timestamp in milliseconds)
    # @option opts [Integer] :date_to dateTo to date range filter type (timestamp in milliseconds)
    # @option opts [Integer] :offset Index of the first document of the page
    # @option opts [Integer] :limit Number of documents per page (default to 50)
    # @option opts [String] :sort Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed
    # @return [Array<FileData>]
    def crm_files_get(opts = {})
      data, _status_code, _headers = crm_files_get_with_http_info(opts)
      data
    end

    # Get all files
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity Filter by file entity type
    # @option opts [String] :entity_ids Filter by file entity IDs
    # @option opts [Integer] :date_from dateFrom to date range filter type (timestamp in milliseconds)
    # @option opts [Integer] :date_to dateTo to date range filter type (timestamp in milliseconds)
    # @option opts [Integer] :offset Index of the first document of the page
    # @option opts [Integer] :limit Number of documents per page (default to 50)
    # @option opts [String] :sort Sort the results in the ascending/descending order. Default order is **descending** by creation if &#x60;sort&#x60; is not passed
    # @return [Array<(Array<FileData>, Integer, Hash)>] Array<FileData> data, response status code and response headers
    def crm_files_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.crm_files_get ...'
      end
      allowable_values = ["companies", "deals", "contacts"]
      if @api_client.config.client_side_validation && opts[:'entity'] && !allowable_values.include?(opts[:'entity'])
        fail ArgumentError, "invalid value for \"entity\", must be one of #{allowable_values}"
      end
      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'sort'] && !allowable_values.include?(opts[:'sort'])
        fail ArgumentError, "invalid value for \"sort\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/crm/files'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entity'] = opts[:'entity'] if !opts[:'entity'].nil?
      query_params[:'entityIds'] = opts[:'entity_ids'] if !opts[:'entity_ids'].nil?
      query_params[:'dateFrom'] = opts[:'date_from'] if !opts[:'date_from'].nil?
      query_params[:'dateTo'] = opts[:'date_to'] if !opts[:'date_to'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<FileData>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"FilesApi.crm_files_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#crm_files_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get file details
    # @param id [String] File id to get file data.
    # @param [Hash] opts the optional parameters
    # @return [FileData]
    def crm_files_id_data_get(id, opts = {})
      data, _status_code, _headers = crm_files_id_data_get_with_http_info(id, opts)
      data
    end

    # Get file details
    # @param id [String] File id to get file data.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileData, Integer, Hash)>] FileData data, response status code and response headers
    def crm_files_id_data_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.crm_files_id_data_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FilesApi.crm_files_id_data_get"
      end
      # resource path
      local_var_path = '/crm/files/{id}/data'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileData'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"FilesApi.crm_files_id_data_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#crm_files_id_data_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a file
    # @param id [String] File id to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def crm_files_id_delete(id, opts = {})
      crm_files_id_delete_with_http_info(id, opts)
      nil
    end

    # Delete a file
    # @param id [String] File id to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def crm_files_id_delete_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.crm_files_id_delete ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FilesApi.crm_files_id_delete"
      end
      # resource path
      local_var_path = '/crm/files/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"FilesApi.crm_files_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#crm_files_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download a file
    # @param id [String] File id to download.
    # @param [Hash] opts the optional parameters
    # @return [FileDownloadableLink]
    def crm_files_id_get(id, opts = {})
      data, _status_code, _headers = crm_files_id_get_with_http_info(id, opts)
      data
    end

    # Download a file
    # @param id [String] File id to download.
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileDownloadableLink, Integer, Hash)>] FileDownloadableLink data, response status code and response headers
    def crm_files_id_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.crm_files_id_get ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling FilesApi.crm_files_id_get"
      end
      # resource path
      local_var_path = '/crm/files/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileDownloadableLink'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"FilesApi.crm_files_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#crm_files_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a file
    # @param file [File] File data to create a file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :deal_id 
    # @option opts [Integer] :contact_id 
    # @option opts [String] :company_id 
    # @return [FileData]
    def crm_files_post(file, opts = {})
      data, _status_code, _headers = crm_files_post_with_http_info(file, opts)
      data
    end

    # Upload a file
    # @param file [File] File data to create a file.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :deal_id 
    # @option opts [Integer] :contact_id 
    # @option opts [String] :company_id 
    # @return [Array<(FileData, Integer, Hash)>] FileData data, response status code and response headers
    def crm_files_post_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.crm_files_post ...'
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling FilesApi.crm_files_post"
      end
      # resource path
      local_var_path = '/crm/files'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['multipart/form-data'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['file'] = file
      form_params['dealId'] = opts[:'deal_id'] if !opts[:'deal_id'].nil?
      form_params['contactId'] = opts[:'contact_id'] if !opts[:'contact_id'].nil?
      form_params['companyId'] = opts[:'company_id'] if !opts[:'company_id'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FileData'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api-key']

      new_options = opts.merge(
        :operation => :"FilesApi.crm_files_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#crm_files_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end