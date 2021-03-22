# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2020_09_30_preview
  module Models
    #
    # A feature for gallery image.
    #
    class GalleryImageFeature

      include MsRestAzure

      # @return [String] The name of the gallery image feature.
      attr_accessor :name

      # @return [String] The value of the gallery image feature.
      attr_accessor :value


      #
      # Mapper for GalleryImageFeature class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GalleryImageFeature',
          type: {
            name: 'Composite',
            class_name: 'GalleryImageFeature',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
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