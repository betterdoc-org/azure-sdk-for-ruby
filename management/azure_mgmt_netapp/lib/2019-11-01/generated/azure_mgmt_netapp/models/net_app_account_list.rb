# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_11_01
  module Models
    #
    # List of NetApp account resources
    #
    class NetAppAccountList

      include MsRestAzure

      # @return [Array<NetAppAccount>] Multiple NetApp accounts
      attr_accessor :value


      #
      # Mapper for NetAppAccountList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'netAppAccountList',
          type: {
            name: 'Composite',
            class_name: 'NetAppAccountList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NetAppAccountElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NetAppAccount'
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