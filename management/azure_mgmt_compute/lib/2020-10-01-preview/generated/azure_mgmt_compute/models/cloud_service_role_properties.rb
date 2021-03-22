# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_10_01_preview
  module Models
    #
    # Model object.
    #
    #
    class CloudServiceRoleProperties

      include MsRestAzure

      # @return [String] Specifies the ID which uniquely identifies a cloud
      # service role.
      attr_accessor :unique_id


      #
      # Mapper for CloudServiceRoleProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CloudServiceRoleProperties',
          type: {
            name: 'Composite',
            class_name: 'CloudServiceRoleProperties',
            model_properties: {
              unique_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'uniqueId',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end