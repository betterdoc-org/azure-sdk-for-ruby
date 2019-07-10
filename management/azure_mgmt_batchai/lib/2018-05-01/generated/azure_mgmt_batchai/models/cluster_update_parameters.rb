# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_05_01
  module Models
    #
    # Cluster update parameters.
    #
    class ClusterUpdateParameters

      include MsRestAzure

      # @return [ScaleSettings] Scale settings. Desired scale settings for the
      # cluster. Batch AI service supports manual and auto scale clusters.
      attr_accessor :scale_settings


      #
      # Mapper for ClusterUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ClusterUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'ClusterUpdateParameters',
            model_properties: {
              scale_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scaleSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ScaleSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
