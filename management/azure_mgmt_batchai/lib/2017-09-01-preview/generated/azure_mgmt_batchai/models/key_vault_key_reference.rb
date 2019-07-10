# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2017_09_01_preview
  module Models
    #
    # Describes a reference to Key Vault Key.
    #
    class KeyVaultKeyReference

      include MsRestAzure

      # @return [ResourceId] Fully qualified resource Id for the Key Vault.
      attr_accessor :source_vault

      # @return [String] The URL referencing a key in a Key Vault.
      attr_accessor :key_url


      #
      # Mapper for KeyVaultKeyReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'KeyVaultKeyReference',
          type: {
            name: 'Composite',
            class_name: 'KeyVaultKeyReference',
            model_properties: {
              source_vault: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceVault',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceId'
                }
              },
              key_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'keyUrl',
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
