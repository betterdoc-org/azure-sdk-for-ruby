# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The collection of volume container entities.
    #
    class VolumeContainerList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<VolumeContainer>] The value.
      attr_accessor :value


      #
      # Mapper for VolumeContainerList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VolumeContainerList',
          type: {
            name: 'Composite',
            class_name: 'VolumeContainerList',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VolumeContainerElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VolumeContainer'
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