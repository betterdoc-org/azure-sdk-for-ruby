# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Monitor::Mgmt::V2019_10_17_preview
  module Models
    #
    # An Azure Monitor PrivateLinkScope definition.
    #
    class AzureMonitorPrivateLinkScope < PrivateLinkScopesResource

      include MsRestAzure

      # @return [String] Current state of this PrivateLinkScope: whether or not
      # is has been provisioned within the resource group it is defined. Users
      # cannot change this value but are able to read from it. Values will
      # include Provisioning ,Succeeded, Canceled and Failed.
      attr_accessor :provisioning_state

      # @return [Array<PrivateEndpointConnection>] List of private endpoint
      # connections.
      attr_accessor :private_endpoint_connections


      #
      # Mapper for AzureMonitorPrivateLinkScope class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureMonitorPrivateLinkScope',
          type: {
            name: 'Composite',
            class_name: 'AzureMonitorPrivateLinkScope',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              private_endpoint_connections: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.privateEndpointConnections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PrivateEndpointConnectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PrivateEndpointConnection'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end