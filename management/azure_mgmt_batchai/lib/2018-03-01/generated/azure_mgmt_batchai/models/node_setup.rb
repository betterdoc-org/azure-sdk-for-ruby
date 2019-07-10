# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::BatchAI::Mgmt::V2018_03_01
  module Models
    #
    # Use this to prepare the VM. NOTE: The volumes specified in mountVolumes
    # are mounted first and then the setupTask is run. Therefore the setup task
    # can use local mountPaths in its execution.
    #
    class NodeSetup

      include MsRestAzure

      # @return [SetupTask] Specifies a setup task which can be used to
      # customize the compute nodes of the cluster. The NodeSetup task runs
      # every time a VM is rebooted. For that reason the task code needs to be
      # idempotent. Generally it is used to either download static data that is
      # required for all jobs that run on the cluster VMs or to
      # download/install software.
      attr_accessor :setup_task

      # @return [MountVolumes] Information on shared volumes to be used by
      # jobs. Specified mount volumes will be available to all jobs executing
      # on the cluster. The volumes will be mounted at location specified by
      # $AZ_BATCHAI_MOUNT_ROOT environment variable.
      attr_accessor :mount_volumes

      # @return [PerformanceCountersSettings] Specifies settings for
      # performance counters collecting and uploading.
      attr_accessor :performance_counters_settings


      #
      # Mapper for NodeSetup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeSetup',
          type: {
            name: 'Composite',
            class_name: 'NodeSetup',
            model_properties: {
              setup_task: {
                client_side_validation: true,
                required: false,
                serialized_name: 'setupTask',
                type: {
                  name: 'Composite',
                  class_name: 'SetupTask'
                }
              },
              mount_volumes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mountVolumes',
                type: {
                  name: 'Composite',
                  class_name: 'MountVolumes'
                }
              },
              performance_counters_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'performanceCountersSettings',
                type: {
                  name: 'Composite',
                  class_name: 'PerformanceCountersSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
