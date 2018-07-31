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
    # Target Azure File Share Info.
    #
    class TargetAFSRestoreInfo

      include MsRestAzure

      # @return [String] File share name
      attr_accessor :name

      # @return [String] Target file share resource ARM ID
      attr_accessor :target_resource_id


      #
      # Mapper for TargetAFSRestoreInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TargetAFSRestoreInfo',
          type: {
            name: 'Composite',
            class_name: 'TargetAFSRestoreInfo',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              target_resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'targetResourceId',
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
