# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Snapshot object.
    #
    class Snapshot

      include MsRestAzure

      # @return Snapshot id.
      attr_accessor :id

      # @return [String] Azure Cognitive Service Face account id of the
      # subscriber who created the snapshot by Snapshot - Take.
      attr_accessor :account

      # @return [SnapshotObjectType] Type of the source object in the snapshot,
      # specified by the subscriber who created the snapshot when calling
      # Snapshot - Take. Currently FaceList, PersonGroup, LargeFaceList and
      # LargePersonGroup are supported. Possible values include: 'FaceList',
      # 'LargeFaceList', 'LargePersonGroup', 'PersonGroup'
      attr_accessor :type

      # @return Array of the target Face subscription ids for the snapshot,
      # specified by the user who created the snapshot when calling Snapshot -
      # Take. For each snapshot, only subscriptions included in the applyScope
      # of Snapshot - Take can apply it.
      attr_accessor :apply_scope

      # @return [String] User specified data about the snapshot for any
      # purpose. Length should not exceed 16KB.
      attr_accessor :user_data

      # @return [DateTime] A combined UTC date and time string that describes
      # the created time of the snapshot. E.g. 2018-12-25T11:41:02.2331413Z.
      attr_accessor :created_time

      # @return [DateTime] A combined UTC date and time string that describes
      # the last time when the snapshot was created or updated by Snapshot -
      # Update. E.g. 2018-12-25T11:51:27.8705696Z.
      attr_accessor :last_update_time


      #
      # Mapper for Snapshot class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Snapshot',
          type: {
            name: 'Composite',
            class_name: 'Snapshot',
            model_properties: {
              id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              account: {
                client_side_validation: true,
                required: true,
                serialized_name: 'account',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'SnapshotObjectType'
                }
              },
              apply_scope: {
                client_side_validation: true,
                required: true,
                serialized_name: 'applyScope',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UuidElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              user_data: {
                client_side_validation: true,
                required: false,
                serialized_name: 'userData',
                constraints: {
                  MaxLength: 16384
                },
                type: {
                  name: 'String'
                }
              },
              created_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_update_time: {
                client_side_validation: true,
                required: true,
                serialized_name: 'lastUpdateTime',
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