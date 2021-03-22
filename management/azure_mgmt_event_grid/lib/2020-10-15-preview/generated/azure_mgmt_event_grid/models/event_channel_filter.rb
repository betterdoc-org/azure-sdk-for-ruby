# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::Mgmt::V2020_10_15_preview
  module Models
    #
    # Filter for the Event Channel.
    #
    class EventChannelFilter

      include MsRestAzure

      # @return [Boolean] Allows advanced filters to be evaluated against an
      # array of values instead of expecting a singular value.
      attr_accessor :enable_advanced_filtering_on_arrays

      # @return [Array<AdvancedFilter>] An array of advanced filters that are
      # used for filtering event channels.
      attr_accessor :advanced_filters


      #
      # Mapper for EventChannelFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EventChannelFilter',
          type: {
            name: 'Composite',
            class_name: 'EventChannelFilter',
            model_properties: {
              enable_advanced_filtering_on_arrays: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enableAdvancedFilteringOnArrays',
                type: {
                  name: 'Boolean'
                }
              },
              advanced_filters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'advancedFilters',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AdvancedFilterElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'operatorType',
                        uber_parent: 'AdvancedFilter',
                        class_name: 'AdvancedFilter'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end