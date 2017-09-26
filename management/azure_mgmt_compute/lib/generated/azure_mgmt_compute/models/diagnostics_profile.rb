# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Specifies the boot diagnostic settings state. <br><br>Minimum
    # api-version: 2015-06-15.
    #
    class DiagnosticsProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [BootDiagnostics] Boot Diagnostics is a debugging feature which
      # allows you to view Console Output and Screenshot to diagnose VM status.
      # <br><br> For Linux Virtual Machines, you can easily view the output of
      # your console log. <br><br> For both Windows and Linux virtual machines,
      # Azure also enables you to see a screenshot of the VM from the
      # hypervisor.
      attr_accessor :boot_diagnostics


      #
      # Mapper for DiagnosticsProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DiagnosticsProfile',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticsProfile',
            model_properties: {
              boot_diagnostics: {
                required: false,
                serialized_name: 'bootDiagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'BootDiagnostics'
                }
              }
            }
          }
        }
      end
    end
  end
end