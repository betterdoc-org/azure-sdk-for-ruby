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
    # Azure VM workload-specific additional information for job.
    #
    class AzureWorkloadJobExtendedInfo

      include MsRestAzure

      # @return [Array<AzureWorkloadJobTaskDetails>] List of tasks for this job
      attr_accessor :tasks_list

      # @return [Hash{String => String}] Job properties.
      attr_accessor :property_bag

      # @return [String] Non localized error message on job execution.
      attr_accessor :dynamic_error_message


      #
      # Mapper for AzureWorkloadJobExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureWorkloadJobExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'AzureWorkloadJobExtendedInfo',
            model_properties: {
              tasks_list: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tasksList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AzureWorkloadJobTaskDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AzureWorkloadJobTaskDetails'
                      }
                  }
                }
              },
              property_bag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'propertyBag',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              dynamic_error_message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dynamicErrorMessage',
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
