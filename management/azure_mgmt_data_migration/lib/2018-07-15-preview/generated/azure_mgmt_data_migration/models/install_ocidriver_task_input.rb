# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for the service task to install an OCI driver.
    #
    class InstallOCIDriverTaskInput

      include MsRestAzure

      # @return [String] Name of the uploaded driver package to install.
      attr_accessor :driver_package_name


      #
      # Mapper for InstallOCIDriverTaskInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InstallOCIDriverTaskInput',
          type: {
            name: 'Composite',
            class_name: 'InstallOCIDriverTaskInput',
            model_properties: {
              driver_package_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'driverPackageName',
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