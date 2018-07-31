# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Filters to list the jobs.
    #
    class JobQueryObject

      include MsRestAzure

      # @return [JobStatus] Status of the job. Possible values include:
      # 'Invalid', 'InProgress', 'Completed', 'Failed',
      # 'CompletedWithWarnings', 'Cancelled', 'Cancelling'
      attr_accessor :status

      # @return [BackupManagementType] Type of backup managmenent for the job.
      # Possible values include: 'Invalid', 'AzureIaasVM', 'MAB', 'DPM',
      # 'AzureBackupServer', 'AzureSql', 'AzureStorage', 'AzureWorkload',
      # 'DefaultBackup'
      attr_accessor :backup_management_type

      # @return [JobOperationType] Type of operation. Possible values include:
      # 'Invalid', 'Register', 'UnRegister', 'ConfigureBackup', 'Backup',
      # 'Restore', 'DisableBackup', 'DeleteBackupData'
      attr_accessor :operation

      # @return [String] JobID represents the job uniquely.
      attr_accessor :job_id

      # @return [DateTime] Job has started at this time. Value is in UTC.
      attr_accessor :start_time

      # @return [DateTime] Job has ended at this time. Value is in UTC.
      attr_accessor :end_time


      #
      # Mapper for JobQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'JobQueryObject',
          type: {
            name: 'Composite',
            class_name: 'JobQueryObject',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
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
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              job_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'jobId',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
