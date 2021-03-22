# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SecurityInsights::Mgmt::V2019_01_01_preview
  #
  # API spec for Microsoft.SecurityInsights (Azure Security Insights) resource
  # provider
  #
  class DataConnectorsCheckRequirementsOperations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the DataConnectorsCheckRequirementsOperations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SecurityInsights] reference to the SecurityInsights
    attr_reader :client

    #
    # Get requirements state for a data connector type.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param operational_insights_resource_provider [String] The namespace of
    # workspaces resource provider- Microsoft.OperationalInsights.
    # @param data_connectors_check_requirements [DataConnectorsCheckRequirements]
    # The parameters for requirements check message
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DataConnectorRequirementsState] operation results.
    #
    def post(resource_group_name, workspace_name, operational_insights_resource_provider, data_connectors_check_requirements, custom_headers:nil)
      response = post_async(resource_group_name, workspace_name, operational_insights_resource_provider, data_connectors_check_requirements, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get requirements state for a data connector type.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param operational_insights_resource_provider [String] The namespace of
    # workspaces resource provider- Microsoft.OperationalInsights.
    # @param data_connectors_check_requirements [DataConnectorsCheckRequirements]
    # The parameters for requirements check message
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def post_with_http_info(resource_group_name, workspace_name, operational_insights_resource_provider, data_connectors_check_requirements, custom_headers:nil)
      post_async(resource_group_name, workspace_name, operational_insights_resource_provider, data_connectors_check_requirements, custom_headers:custom_headers).value!
    end

    #
    # Get requirements state for a data connector type.
    #
    # @param resource_group_name [String] The name of the resource group within the
    # user's subscription. The name is case insensitive.
    # @param workspace_name [String] The name of the workspace.
    # @param operational_insights_resource_provider [String] The namespace of
    # workspaces resource provider- Microsoft.OperationalInsights.
    # @param data_connectors_check_requirements [DataConnectorsCheckRequirements]
    # The parameters for requirements check message
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def post_async(resource_group_name, workspace_name, operational_insights_resource_provider, data_connectors_check_requirements, custom_headers:nil)
      @client.api_version = '2019-01-01-preview'
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, "'@client.subscription_id' should satisfy the constraint - 'Pattern': '^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$'" if !@client.subscription_id.nil? && @client.subscription_id.match(Regexp.new('^^[0-9A-Fa-f]{8}-([0-9A-Fa-f]{4}-){3}[0-9A-Fa-f]{12}$$')).nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MaxLength': '90'" if !workspace_name.nil? && workspace_name.length > 90
      fail ArgumentError, "'workspace_name' should satisfy the constraint - 'MinLength': '1'" if !workspace_name.nil? && workspace_name.length < 1
      fail ArgumentError, 'operational_insights_resource_provider is nil' if operational_insights_resource_provider.nil?
      fail ArgumentError, 'data_connectors_check_requirements is nil' if data_connectors_check_requirements.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::SecurityInsights::Mgmt::V2019_01_01_preview::Models::DataConnectorsCheckRequirements.mapper()
      request_content = @client.serialize(request_mapper,  data_connectors_check_requirements)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{operationalInsightsResourceProvider}/workspaces/{workspaceName}/providers/Microsoft.SecurityInsights/dataConnectorsCheckRequirements'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'operationalInsightsResourceProvider' => operational_insights_resource_provider},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::SecurityInsights::Mgmt::V2019_01_01_preview::Models::DataConnectorRequirementsState.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end