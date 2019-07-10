# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2017_09_01_preview
  module Models
    #
    # Details of the Azure File Share to mount on the cluster.
    #
    class AzureFileShareReference

      include MsRestAzure

      # @return [String] Name of the storage account.
      attr_accessor :account_name

      # @return [String] URL to access the Azure File.
      attr_accessor :azure_file_url

      # @return [AzureStorageCredentialsInfo] Information of the Azure File
      # credentials.
      attr_accessor :credentials

      # @return [String] Specifies the relative path on the compute node where
      # the Azure file share will be mounted. Note that all file shares will be
      # mounted under $AZ_BATCHAI_MOUNT_ROOT location.
      attr_accessor :relative_mount_path

      # @return [String] Specifies the file mode. Default value is 0777. Valid
      # only if OS is linux. Default value: '0777' .
      attr_accessor :file_mode

      # @return [String] Specifies the directory Mode. Default value is 0777.
      # Valid only if OS is linux. Default value: '0777' .
      attr_accessor :directory_mode


      #
      # Mapper for AzureFileShareReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureFileShareReference',
          type: {
            name: 'Composite',
            class_name: 'AzureFileShareReference',
            model_properties: {
              account_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'accountName',
                type: {
                  name: 'String'
                }
              },
              azure_file_url: {
                client_side_validation: true,
                required: true,
                serialized_name: 'azureFileUrl',
                type: {
                  name: 'String'
                }
              },
              credentials: {
                client_side_validation: true,
                required: true,
                serialized_name: 'credentials',
                type: {
                  name: 'Composite',
                  class_name: 'AzureStorageCredentialsInfo'
                }
              },
              relative_mount_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'relativeMountPath',
                type: {
                  name: 'String'
                }
              },
              file_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fileMode',
                default_value: '0777',
                type: {
                  name: 'String'
                }
              },
              directory_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'directoryMode',
                default_value: '0777',
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
