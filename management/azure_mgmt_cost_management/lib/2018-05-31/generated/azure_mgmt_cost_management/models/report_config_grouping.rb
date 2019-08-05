# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2018_05_31
  module Models
    #
    # The group by expression to be used in the report.
    #
    class ReportConfigGrouping

      include MsRestAzure

      # @return [ReportConfigColumnType] Has type of the column to group.
      # Possible values include: 'Tag', 'Dimension'
      attr_accessor :column_type

      # @return [String] The name of the column to group.
      attr_accessor :name


      #
      # Mapper for ReportConfigGrouping class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReportConfigGrouping',
          type: {
            name: 'Composite',
            class_name: 'ReportConfigGrouping',
            model_properties: {
              column_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'columnType',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
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