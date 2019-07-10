# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Contains information about a Cluster.
    #
    class Cluster < Resource

      include MsRestAzure

      # @return [String] The size of the virtual machines in the cluster. All
      # virtual machines in a cluster are the same size. For information about
      # available VM sizes for clusters using images from the Virtual Machines
      # Marketplace (see Sizes for Virtual Machines (Linux) or Sizes for
      # Virtual Machines (Windows). Batch AI service supports all Azure VM
      # sizes except STANDARD_A0 and those with premium storage (STANDARD_GS,
      # STANDARD_DS, and STANDARD_DSV2 series).
      attr_accessor :vm_size

      # @return [VmPriority] dedicated or lowpriority. The default value is
      # dedicated. The node can get preempted while the task is running if
      # lowpriority is chosen. This is best suited if the workload is
      # checkpointing and can be restarted. Possible values include:
      # 'dedicated', 'lowpriority'. Default value: 'dedicated' .
      attr_accessor :vm_priority

      # @return [ScaleSettings] Desired scale for the Cluster.
      attr_accessor :scale_settings

      # @return [VirtualMachineConfiguration] Settings for OS image and mounted
      # data volumes.
      attr_accessor :virtual_machine_configuration

      # @return [NodeSetup] Setup to be done on all compute nodes in the
      # Cluster.
      attr_accessor :node_setup

      # @return [UserAccountSettings] Settings for user account of compute
      # nodes.
      attr_accessor :user_account_settings

      # @return [ResourceId] Specifies the identifier of the subnet.
      attr_accessor :subnet

      # @return [DateTime] The creation time of the cluster.
      attr_accessor :creation_time

      # @return [ProvisioningState] Specifies the provisioning state of the
      # cluster. Possible value are: creating - Specifies that the cluster is
      # being created. succeeded - Specifies that the cluster has been created
      # successfully. failed - Specifies that the cluster creation has failed.
      # deleting - Specifies that the cluster is being deleted. Possible values
      # include: 'creating', 'succeeded', 'failed', 'deleting'
      attr_accessor :provisioning_state

      # @return [DateTime] The provisioning state transition time of the
      # cluster.
      attr_accessor :provisioning_state_transition_time

      # @return [AllocationState] Indicates whether the cluster is resizing.
      # Possible values are: steady and resizing. steady state indicates that
      # the cluster is not resizing. There are no changes to the number of
      # compute nodes in the cluster in progress. A cluster enters this state
      # when it is created and when no operations are being performed on the
      # cluster to change the number of compute nodes. resizing state indicates
      # that the cluster is resizing; that is, compute nodes are being added to
      # or removed from the cluster. Possible values include: 'steady',
      # 'resizing'
      attr_accessor :allocation_state

      # @return [DateTime] The time at which the cluster entered its current
      # allocation state.
      attr_accessor :allocation_state_transition_time

      # @return [Array<BatchAIError>] Contains details of various errors on the
      # cluster including resize and node setup task. This element contains all
      # the errors encountered by various compute nodes during node setup.
      attr_accessor :errors

      # @return [Integer] The number of compute nodes currently assigned to the
      # cluster.
      attr_accessor :current_node_count

      # @return [NodeStateCounts] Counts of various node states on the cluster.
      attr_accessor :node_state_counts


      #
      # Mapper for Cluster class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Cluster',
          type: {
            name: 'Composite',
            class_name: 'Cluster',
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
              location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tags',
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
              vm_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vmSize',
                type: {
                  name: 'String'
                }
              },
              vm_priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vmPriority',
                default_value: 'dedicated',
                type: {
                  name: 'Enum',
                  module: 'VmPriority'
                }
              },
              scale_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.scaleSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ScaleSettings'
                }
              },
              virtual_machine_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualMachineConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineConfiguration'
                }
              },
              node_setup: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.nodeSetup',
                type: {
                  name: 'Composite',
                  class_name: 'NodeSetup'
                }
              },
              user_account_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.userAccountSettings',
                type: {
                  name: 'Composite',
                  class_name: 'UserAccountSettings'
                }
              },
              subnet: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.subnet',
                type: {
                  name: 'Composite',
                  class_name: 'ResourceId'
                }
              },
              creation_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              provisioning_state_transition_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningStateTransitionTime',
                type: {
                  name: 'DateTime'
                }
              },
              allocation_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.allocationState',
                type: {
                  name: 'Enum',
                  module: 'AllocationState'
                }
              },
              allocation_state_transition_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.allocationStateTransitionTime',
                type: {
                  name: 'DateTime'
                }
              },
              errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'BatchAIErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'BatchAIError'
                      }
                  }
                }
              },
              current_node_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.currentNodeCount',
                type: {
                  name: 'Number'
                }
              },
              node_state_counts: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.nodeStateCounts',
                type: {
                  name: 'Composite',
                  class_name: 'NodeStateCounts'
                }
              }
            }
          }
        }
      end
    end
  end
end
