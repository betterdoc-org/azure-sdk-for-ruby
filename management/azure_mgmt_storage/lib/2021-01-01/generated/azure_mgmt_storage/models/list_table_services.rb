# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2021_01_01
  module Models
    #
    # Model object.
    #
    #
    class ListTableServices

      include MsRestAzure

      # @return [Array<TableServiceProperties>] List of table services
      # returned.
      attr_accessor :value


      #
      # Mapper for ListTableServices class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListTableServices',
          type: {
            name: 'Composite',
            class_name: 'ListTableServices',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TableServicePropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TableServiceProperties'
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