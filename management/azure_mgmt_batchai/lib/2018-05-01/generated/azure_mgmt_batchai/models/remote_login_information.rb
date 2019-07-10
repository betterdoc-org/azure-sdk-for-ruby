# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # Login details to SSH to a compute node in cluster.
    #
    class RemoteLoginInformation

      include MsRestAzure

      # @return [String] Node ID. ID of the compute node.
      attr_accessor :node_id

      # @return [String] IP address. Public IP address of the compute node.
      attr_accessor :ip_address

      # @return [Float] Port. SSH port number of the node.
      attr_accessor :port


      #
      # Mapper for RemoteLoginInformation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RemoteLoginInformation',
          type: {
            name: 'Composite',
            class_name: 'RemoteLoginInformation',
            model_properties: {
              node_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nodeId',
                type: {
                  name: 'String'
                }
              },
              ip_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'ipAddress',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'port',
                type: {
                  name: 'Double'
                }
              }
            }
          }
        }
      end
    end
  end
end
