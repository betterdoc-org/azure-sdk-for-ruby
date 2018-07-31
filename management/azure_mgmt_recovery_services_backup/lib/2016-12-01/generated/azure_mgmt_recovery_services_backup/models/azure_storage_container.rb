# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Azure Storage Account workload-specific container.
    #
    class AzureStorageContainer < ProtectionContainer

      include MsRestAzure


      def initialize
        @containerType = "StorageContainer"
      end

      attr_accessor :containerType

      # @return [String] Fully qualified ARM url.
      attr_accessor :source_resource_id

      # @return [String] Storage account version.
      attr_accessor :storage_account_version

      # @return [String] Resource group name of Recovery Services Vault.
      attr_accessor :resource_group

      # @return [Integer] Number of items backed up in this container.
      attr_accessor :protected_item_count


      #
      # Mapper for AzureStorageContainer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageContainer',
          type: {
            name: 'Composite',
            class_name: 'AzureStorageContainer',
            model_properties: {
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              containerType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              source_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              storage_account_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storageAccountVersion',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceGroup',
                type: {
                  name: 'String'
                }
              },
              protected_item_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemCount',
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
