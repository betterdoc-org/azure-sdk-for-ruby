# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights::Api_2017_04_26
  module Models
    #
    # Metadata for a Link's property mapping.
    #
    class TypePropertiesMapping

      include MsRestAzure

      include MsRest::JSONable
      # @return [String]  Property name on the source Entity Type.
      attr_accessor :source_property_name

      # @return [String] Property name on the target Entity Type.
      attr_accessor :target_property_name

      # @return [LinkTypes] Link type. Possible values include: 'UpdateAlways',
      # 'CopyIfNull'
      attr_accessor :link_type


      #
      # Mapper for TypePropertiesMapping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'TypePropertiesMapping',
          type: {
            name: 'Composite',
            class_name: 'TypePropertiesMapping',
            model_properties: {
              source_property_name: {
                required: true,
                serialized_name: 'sourcePropertyName',
                type: {
                  name: 'String'
                }
              },
              target_property_name: {
                required: true,
                serialized_name: 'targetPropertyName',
                type: {
                  name: 'String'
                }
              },
              link_type: {
                required: false,
                serialized_name: 'linkType',
                type: {
                  name: 'Enum',
                  module: 'LinkTypes'
                }
              }
            }
          }
        }
      end
    end
  end
end