# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Additional parameters for list operation.
    #
    class JobsListOptions

      include MsRestAzure

      # @return [String] An OData $filter clause. Used to filter results that
      # are returned in the GET response.
      attr_accessor :filter

      # @return [String] An OData $select clause. Used to select the properties
      # to be returned in the GET response.
      attr_accessor :select

      # @return [Integer] The maximum number of items to return in the
      # response. A maximum of 1000 files can be returned. Default value: 1000
      # .
      attr_accessor :max_results


      #
      # Mapper for JobsListOptions class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          type: {
            name: 'Composite',
            class_name: 'JobsListOptions',
            model_properties: {
              filter: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'String'
                }
              },
              select: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'String'
                }
              },
              max_results: {
                client_side_validation: true,
                required: false,
                default_value: 1000,
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
