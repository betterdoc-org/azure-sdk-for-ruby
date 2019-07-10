# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # The image reference.
    #
    class ImageReference

      include MsRestAzure

      # @return [String] Publisher of the image.
      attr_accessor :publisher

      # @return [String] Offer of the image.
      attr_accessor :offer

      # @return [String] SKU of the image.
      attr_accessor :sku

      # @return [String] Version of the image.
      attr_accessor :version

      # @return [String] The ARM resource identifier of the virtual machine
      # image. Computes nodes of the cluster will be created using this custom
      # image. This is of the form
      # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}.
      # The virtual machine image must be in the same region and subscription
      # as the cluster. For information about the firewall settings for the
      # Batch node agent to communicate with the Batch service see
      # https://docs.microsoft.com/en-us/azure/batch/batch-api-basics#virtual-network-vnet-and-firewall-configuration.
      # Note, you need to provide publisher, offer and sku of the base OS image
      # of which the custom image has been derived from.
      attr_accessor :virtual_machine_image_id


      #
      # Mapper for ImageReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ImageReference',
          type: {
            name: 'Composite',
            class_name: 'ImageReference',
            model_properties: {
              publisher: {
                client_side_validation: true,
                required: true,
                serialized_name: 'publisher',
                type: {
                  name: 'String'
                }
              },
              offer: {
                client_side_validation: true,
                required: true,
                serialized_name: 'offer',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_image_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'virtualMachineImageId',
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
