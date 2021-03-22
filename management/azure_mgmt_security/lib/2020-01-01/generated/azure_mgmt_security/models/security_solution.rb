# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Security::Mgmt::V2020_01_01
  module Models
    #
    # Model object.
    #
    #
    class SecuritySolution

      include MsRestAzure

      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [String] Location where the resource is stored
      attr_accessor :location

      # @return [SecurityFamily] The security family of the security solution.
      # Possible values include: 'Waf', 'Ngfw', 'SaasWaf', 'Va'
      attr_accessor :security_family

      # @return [ProvisioningState] The security family provisioning State.
      # Possible values include: 'Succeeded', 'Failed', 'Updating'
      attr_accessor :provisioning_state

      # @return [String] The security solutions' template
      attr_accessor :template

      # @return [String] The security solutions' status
      attr_accessor :protection_status


      #
      # Mapper for SecuritySolution class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SecuritySolution',
          type: {
            name: 'Composite',
            class_name: 'SecuritySolution',
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
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              security_family: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.securityFamily',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              template: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.template',
                type: {
                  name: 'String'
                }
              },
              protection_status: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.protectionStatus',
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