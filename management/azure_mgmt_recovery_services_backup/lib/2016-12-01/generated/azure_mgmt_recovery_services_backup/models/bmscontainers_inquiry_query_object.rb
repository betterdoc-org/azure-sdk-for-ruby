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
    # The query filters that can be used with the inquire container API.
    #
    class BMSContainersInquiryQueryObject

      include MsRestAzure

      # @return [BackupManagementType] Backup management type for this
      # container. Possible values include: 'Invalid', 'AzureIaasVM', 'MAB',
      # 'DPM', 'AzureBackupServer', 'AzureSql', 'AzureStorage',
      # 'AzureWorkload', 'DefaultBackup'
      attr_accessor :backup_management_type

      # @return [WorkloadType] Workload type for this container. Possible
      # values include: 'Invalid', 'VM', 'FileFolder', 'AzureSqlDb', 'SQLDB',
      # 'Exchange', 'Sharepoint', 'VMwareVM', 'SystemState', 'Client',
      # 'GenericDataSource', 'SQLDataBase', 'AzureFileShare', 'SAPHanaDatabase'
      attr_accessor :workload_type


      #
      # Mapper for BMSContainersInquiryQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BMSContainersInquiryQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSContainersInquiryQueryObject',
            model_properties: {
              backup_management_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workloadType',
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
