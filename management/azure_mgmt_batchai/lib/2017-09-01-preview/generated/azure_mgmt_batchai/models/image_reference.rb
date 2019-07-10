# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2017_09_01_preview
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
              }
            }
          }
        }
      end
    end
  end
end
