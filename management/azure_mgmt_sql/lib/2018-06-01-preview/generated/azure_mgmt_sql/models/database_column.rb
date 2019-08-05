# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2018_06_01_preview
  module Models
    #
    # A database column resource.
    #
    class DatabaseColumn < ProxyResource

      include MsRestAzure

      # @return [ColumnDataType] The column data type. Possible values include:
      # 'image', 'text', 'uniqueidentifier', 'date', 'time', 'datetime2',
      # 'datetimeoffset', 'tinyint', 'smallint', 'int', 'smalldatetime',
      # 'real', 'money', 'datetime', 'float', 'sql_variant', 'ntext', 'bit',
      # 'decimal', 'numeric', 'smallmoney', 'bigint', 'hierarchyid',
      # 'geometry', 'geography', 'varbinary', 'varchar', 'binary', 'char',
      # 'timestamp', 'nvarchar', 'nchar', 'xml', 'sysname'
      attr_accessor :column_type


      #
      # Mapper for DatabaseColumn class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseColumn',
          type: {
            name: 'Composite',
            class_name: 'DatabaseColumn',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              column_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.columnType',
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